class CreateCustodians < ActiveRecord::Migration[6.0]
  def change
    create_table :custodians do |t|
      t.string :custodian_name
      t.integer :custodian_order
      t.references :child, null: false, foreign_key: true

      t.timestamps
    end
  end
end
