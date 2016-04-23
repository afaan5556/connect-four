require 'bcrypt'
class User < ActiveRecord::Base

  include BCrypt
  # Remember to create a migration!
  has_many :posts
  has_many :comments
  has_many :answers
  has_many :votes

  has_secure_password
end
