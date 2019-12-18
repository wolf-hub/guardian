class CreateStates < ActiveRecord::Migration[6.0]
  def change
    create_table :states do |t|
      t.string :state
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
