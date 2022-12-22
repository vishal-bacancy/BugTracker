# frozen_string_literal: true

class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.string :name

      t.timestamps
    end

    create_table :projects_users do |t|
      t.references :user, null: false, foreign_key: true
      t.references :project, null: false, foreign_key: true
    end
  end
end
