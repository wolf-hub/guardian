class CreateSpouses < ActiveRecord::Migration[6.0]
  def change
    create_table :spouses do |t|
      t.string :spouse_name
      t.date :spouse_age
      t.references :user

      t.timestamps
    end
  end
end
