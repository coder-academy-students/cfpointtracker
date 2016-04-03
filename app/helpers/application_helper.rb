module ApplicationHelper
  def award_total(student, discipline)
    award_sum = 0
    # need to find the total points for a student for each discipline
    student_awards = StudentAward.where(student_id: student.id, discipline_id: discipline.id)
    student_awards.each do |sa|
      award_sum = award_sum + sa.award.value
    end
    return award_sum
  end
end
