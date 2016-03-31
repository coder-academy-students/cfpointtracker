class StudentAward < ActiveRecord::Base
  belongs_to :student
  belongs_to :award
  belongs_to :discipline
  belongs_to :user
end
