class Award < ActiveRecord::Base
  has_many :student_awards
end
