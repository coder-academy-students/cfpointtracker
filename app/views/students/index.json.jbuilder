json.array!(@students) do |student|
  json.extract! student, :id, :name, :total_points
  json.url student_url(student, format: :json)
end
