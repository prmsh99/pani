class AddDateToUsers < ActiveRecord::Migration
  def change
      add_column :users, :Date, :date
  end
end
