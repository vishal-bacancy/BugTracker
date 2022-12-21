class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, 
         :recoverable, :rememberable, :validatable
  rolify
  has_many :roles
  has_many :user_projects, dependent: :destroy
  has_many :projects, through: :user_projects

  validates :username, uniqueness: true
  validates :email, uniqueness: true
  
end
