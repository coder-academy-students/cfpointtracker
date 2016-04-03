class Student < ActiveRecord::Base
  has_many :student_awards
  has_many :awards, through: :student_awards

  def update_total
    new_total = awards.sum('value')
    update_attributes(total_points: new_total)
  end

  def self.ordered_by_points
    order(total_points: :desc)
  end

end
