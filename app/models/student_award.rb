class StudentAward < ActiveRecord::Base
  belongs_to :student
  belongs_to :award
  belongs_to :discipline
  belongs_to :user

  validates :student, :award, :discipline, :reason, presence: true

  after_save :update_student_total
  after_destroy :update_student_total

  def update_student_total
    self.student.update_total
  end
end
