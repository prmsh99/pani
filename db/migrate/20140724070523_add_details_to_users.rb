class AddDetailsToUsers < ActiveRecord::Migration
  def change
  	add_column :jobregistrations, :qualification, :string
  end
end
