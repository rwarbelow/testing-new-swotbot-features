class CreateStudentActions < ActiveRecord::Migration
  def change
    create_table :student_actions do |t|
      t.string :action_type_id
      t.integer :student_id

      t.timestamps
    end
  end
end
