class AddBirthTousers < ActiveRecord::Migration
  def change

   add_column :users, :birth, :string

  end
end
