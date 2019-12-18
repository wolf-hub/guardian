class AddCreateAnotherToChildren < ActiveRecord::Migration[6.0]
  def change
  	add_column :children, :create_another, :string
  end
end
