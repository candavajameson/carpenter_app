class Carpenter < ActiveRecord::Base
  belongs_to :user
  has_many :products
  has_many :recommendations
end
