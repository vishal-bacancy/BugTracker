# frozen_string_literal: true

class Project < ApplicationRecord
  # has_many :user_projects, dependent: :destroy
  has_and_belongs_to_many :users # , through: :user_projects
  has_many :tickets,  dependent: :destroy
  has_many :comments, through: :tickets, dependent: :destroy
end
