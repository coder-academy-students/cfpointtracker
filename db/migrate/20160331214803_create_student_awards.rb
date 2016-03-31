class CreateStudentAwards < ActiveRecord::Migration
  def change
    create_table :student_awards do |t|
      t.references :student, index: true, foreign_key: true
      t.references :award, index: true, foreign_key: true
      t.references :discipline, index: true, foreign_key: true
      t.text :reason

      t.timestamps null: false
    end
  end
end
