class CreateAges < ActiveRecord::Migration[6.0]
  def change
    create_table :ages do |t|
      t.date :age
      t.references :user

      t.timestamps
    end
  end
end
