json.array!(@student_awards) do |student_award|
  json.extract! student_award, :id, :student_id, :award_id, :discipline_id, :reason
  json.url student_award_url(student_award, format: :json)
end
