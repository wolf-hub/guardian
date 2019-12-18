class CreateChildguardians < ActiveRecord::Migration[6.0]
  def change
    create_table :childguardians do |t|
      t.string :guardian_name
      t.integer :guardian_order
      t.references :user
      t.references :child

      t.timestamps
    end
  end
end
