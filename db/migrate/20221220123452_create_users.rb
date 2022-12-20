class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|

      t.string :username
      t.string :fullname
      t.string :email
      t.string :password
      t.string :role, foreign_key: true

      t.timestamps
    end
  end
end
