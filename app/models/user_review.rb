class UserReview < ActiveRecord::Base
  
  belongs_to :user
  belongs_to :product

  validates :user, presence:true
  validates :product, presence:true
  validates :description, presence:true
  validates :rating, presence:true, numericality: {only_integer: true, greater_than: 0, less_than: 6}

end