class CreateChildren < ActiveRecord::Migration[6.0]
  def change
    create_table :children do |t|
      t.string :child_name
      t.date :child_age
      t.string :child_parents
      t.references :user

      t.timestamps
    end
  end
end
