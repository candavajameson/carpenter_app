class Carpenter < ActiveRecord::Base
  belongs_to :user
  has_many :recommendations
end
