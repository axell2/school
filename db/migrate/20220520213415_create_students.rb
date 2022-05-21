class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :name
      t.string :last_name
      t.string :gender
      t.datetime :date_of_birth

      t.timestamps
    end
  end
end
