class PagesController < ApplicationController
  def home
    @students = Student.all.includes(:student_awards)
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
