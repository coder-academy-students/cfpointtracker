class AddUserToStudentAward < ActiveRecord::Migration
  def change
    add_reference :student_awards, :user, index: true, foreign_key: true
  end
end
