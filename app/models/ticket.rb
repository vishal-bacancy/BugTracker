# frozen_string_literal: true

class Ticket < ApplicationRecord
  enum :current_state, %i[backlog open started pr_open to_be_tested closed]

  belongs_to :project
  has_many :comments
end
