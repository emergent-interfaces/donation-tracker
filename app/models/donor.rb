class Donor < ActiveRecord::Base
  attr_accessible :profile_attributes

  has_one :profile
  accepts_nested_attributes_for :profile
end
