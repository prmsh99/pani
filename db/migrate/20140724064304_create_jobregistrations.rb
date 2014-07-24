class CreateJobregistrations < ActiveRecord::Migration
  def change
    create_table :jobregistrations do |t|
      t.string :name
      t.integer :age
      t.string :housenumber
      t.string :street
      t.string :village
      t.string :district
      t.string :state
      t.string :phone
      t.string :email
      t.string :experience
      t.string :qualification
      t.string :school1
      t.string :school2
      t.string :school3
      t.string :school4
      t.string :passout1
      t.string :passout2
      t.string :passout3
      t.string :passout4
      t.string :standard1
      t.string :standard2
      t.string :standard3
      t.string :standard4
      t.string :job1
      t.string :job2
      t.string :job3
      t.string :exp1
      t.string :exp2
      t.string :exp3
      t.text :desc
      t.string :languages
      t.string :choicelocation
      t.string :previoussalary
      t.string :expectedsalary
      t.string :religion
      t.string :caste

      t.timestamps
    end
  end
end
