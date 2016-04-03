class Award < ActiveRecord::Base
  has_many :student_awards
  has_many :students, through: :student_awards
end
