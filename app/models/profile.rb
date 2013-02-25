class Profile < ActiveRecord::Base
  attr_accessible :birthdate, :name, :donor, :profile_type, :notes

  belongs_to :donor
  belongs_to :recipient
  validates_presence_of :name

  classy_enum_attr :profile_type, :default => 'individual', :allow_blank => false
  validates_presence_of :profile_type
end
