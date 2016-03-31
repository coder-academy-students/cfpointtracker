class Discipline < ActiveRecord::Base
  has_many :student_awards

  def self.alphabetical
    order(name: :asc)
  end
end
