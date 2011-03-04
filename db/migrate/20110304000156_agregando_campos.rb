class AgregandoCampos < ActiveRecord::Migration
  def self.up
  	add_column :products, :order_id :integer
  	add_column :clients, :nit, :text
  	add_index :clients, :nit, unique => true, :length => 10
  end

  def self.down
  	remove_column :products, :orde_id
  	remove_column :clients, :nit
  end
end
