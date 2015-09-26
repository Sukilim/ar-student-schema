require_relative '../config'

# this is where you should use an ActiveRecord migration to 

class CreateStudents < ActiveRecord::Migration
  def change
    # HINT: checkout ActiveRecord::Migration.create_table
    create_table :products do |t|
    	t.string :first_name, null: false
    	t.string :last_name, null: false
    	t.string :gender, null: false
    	t.date :birthday, null: false
    	t.string :email, null: false, uniqueness: true
    	t.string :phone, null: false
    end
  end
end
