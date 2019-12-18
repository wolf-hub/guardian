class CreateRelationships < ActiveRecord::Migration[6.0]
  def change
    create_table :relationships do |t|
      t.string :status
      t.references :user

      t.timestamps
    end
  end
end
