# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  rolify
  has_many :roles
  # has_many :user_projects, dependent: :destroy
  has_and_belongs_to_many :projects # , through: :user_projects
  has_many :comments

  validates :username, uniqueness: true
  validates :email, uniqueness: true
end
