class User < ApplicationRecord
  rolify
  has_many :roles

  validates :username, uniqueness: true
  validates :email, uniqueness: true
  
end
