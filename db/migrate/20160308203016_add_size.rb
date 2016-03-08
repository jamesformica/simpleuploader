class AddSize < ActiveRecord::Migration
  def change
  	add_column :uploads, :size, :decimal
  end
end
