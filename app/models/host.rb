class Host < ActiveRecord::Base
  include LogicallyDeletable

  has_many :roles,  :dependent => :destroy, :uniq => true, :inverse_of => :host
  has_many :stages, :through   => :roles,   :uniq => true # XXX uniq does not seem to work! You get all stages, even doubles
  has_many :activities, :as => :target, :dependent => :destroy

  accepts_nested_attributes_for :roles, :allow_destroy => true

  validates :name,
    :uniqueness => { :scope => [:deleted_at], :if => 'deleted_at.nil?' },
    :presence   => true,
    :length     => { :maximum => 250 }
  validate :guard_valid_hostname_or_ip

  attr_accessible :name, :roles_attributes

  before_validation :strip_whitespace

  def delete_logically_with_asscociation
    delete_logically
    roles.each { |role| role.delete_logically }
  end

private

  def guard_valid_hostname_or_ip
    errors.add("name", "is not a valid hostname or IP") unless ( valid_ip? || valid_hostname? )
  end

  def strip_whitespace
    self.name = self.name.strip if self.name
  end

  def valid_hostname?
    self.name =~ /\A[a-zA-Z0-9\_\-\.]+\Z/
  end

  def valid_ip?
    if self.name =~ /^(\d{1,3})\.(\d{1,3})\.(\d{1,3})\.(\d{1,3})$/
      ($1.to_i <= 255) && ($2.to_i <= 255) && ($3.to_i <= 255) && ($4.to_i <= 255)
    else
      false
    end
  end

end
