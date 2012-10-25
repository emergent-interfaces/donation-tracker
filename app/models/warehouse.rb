class Warehouse < ActiveRecord::Base
  attr_accessible :name
  validates_presence_of :name

  attr_accessible :address_attributes
  has_one :address, :as => :addressable, :dependent => :destroy
  accepts_nested_attributes_for :address, :reject_if => proc { |attrs| attrs['text'].blank? }
end
