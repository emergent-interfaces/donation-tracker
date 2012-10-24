class Recipient < ActiveRecord::Base
  attr_accessible :person_attributes

  has_one :person
  accepts_nested_attributes_for :person
end
