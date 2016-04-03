class PagesController < ApplicationController
  skip_before_action :authenticate_user!, except: :admin
  def home
    @students = Student.ordered_by_points.includes(:student_awards)
    @disciplines = Discipline.alphabetical
  end

  def admin
    if current_user.has_role? :admin
      @students = Student.all
      @awards = Award.all
      @disciplines = Discipline.all
      @student_awards = StudentAward.all
    else
      redirect_to root_path
    end
  end

  def contact
  end
end
