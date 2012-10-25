class Address < ActiveRecord::Base
  attr_accessible :addressable_id, :text

  belongs_to :addressable, :polymorphic => true
end
