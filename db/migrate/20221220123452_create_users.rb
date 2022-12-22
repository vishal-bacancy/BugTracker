# frozen_string_literal: true

class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :fullname
      t.string :email
      t.string :encrypted_password, null: false, default: ''

      t.timestamps
    end
  end
end
