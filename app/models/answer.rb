class Answer < ActiveRecord::Base
  # Remember to create a migration!
  has_many :comments, as: :commentable
  has_many :votes, as: :voteable
  belongs_to :user
  belongs_to :post
end
