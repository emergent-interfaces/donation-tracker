class Person < ActiveRecord::Base
  attr_accessible :birthdate, :name, :donor

  belongs_to :donor
  validates_presence_of :name

  def donor?

  end

  def recipient?

  end

  def staff?

  end
end
