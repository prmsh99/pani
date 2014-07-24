class RemoveFieldNameFromTableName < ActiveRecord::Migration
  def change
  	remove_column :jobregistrations , :qualification
  end
end
