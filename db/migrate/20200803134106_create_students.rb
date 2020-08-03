class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.string :name, index: true
      t.string :institution_name, index: true
      t.timestamps
    end
  end
end
