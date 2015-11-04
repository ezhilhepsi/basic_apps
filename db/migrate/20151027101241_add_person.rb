class AddPerson < ActiveRecord::Migration
  def change    
  	add_column :users, :name, :string
  	add_column :users, :phone_no, :string
  	add_column :users, :description, :text
  end
end
