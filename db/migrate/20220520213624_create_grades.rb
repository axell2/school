class CreateGrades < ActiveRecord::Migration[5.2]
  def change
    create_table :grades do |t|
      t.string :name
      t.references :teacher, foreign_key: true

      t.timestamps
    end
  end
end
