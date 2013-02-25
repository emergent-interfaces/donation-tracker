class Profile < ActiveRecord::Base
  attr_accessible :birthdate, :name, :donor

  belongs_to :donor
  belongs_to :recipient
  validates_presence_of :name
end
