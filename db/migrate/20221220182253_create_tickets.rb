class CreateTickets < ActiveRecord::Migration[7.0]
  def change
    create_table :tickets do |t|
      t.string :title
      t.text :description
      t.integer :current_state, default: 0
      t.string :current_release_milestone
      t.references :project, null: false, foreign_key: true
      t.timestamps
    end
  end
end
