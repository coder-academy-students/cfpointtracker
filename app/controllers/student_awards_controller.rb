class StudentAwardsController < ApplicationController
  before_action :set_student_award, only: [:show, :edit, :update, :destroy]

  # GET /student_awards
  # GET /student_awards.json
  def index
    @student_awards = StudentAward.all
  end

  # GET /student_awards/1
  # GET /student_awards/1.json
  def show
  end

  # GET /student_awards/new
  def new
    @student_award = StudentAward.new
  end

  # GET /student_awards/1/edit
  def edit
  end

  # POST /student_awards
  # POST /student_awards.json
  def create
    @student_award = StudentAward.new(student_award_params)
    @student_award.user = current_user
    respond_to do |format|
      if @student_award.save
        format.html { redirect_to @student_award, notice: 'Student award was successfully created.' }
        format.json { render :show, status: :created, location: @student_award }
      else
        format.html { render :new }
        format.json { render json: @student_award.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /student_awards/1
  # PATCH/PUT /student_awards/1.json
  def update
    respond_to do |format|
      if @student_award.update(student_award_params)
        format.html { redirect_to @student_award, notice: 'Student award was successfully updated.' }
        format.json { render :show, status: :ok, location: @student_award }
      else
        format.html { render :edit }
        format.json { render json: @student_award.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /student_awards/1
  # DELETE /student_awards/1.json
  def destroy
    @student_award.destroy
    respond_to do |format|
      format.html { redirect_to student_awards_url, notice: 'Student award was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student_award
      @student_award = StudentAward.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def student_award_params
      params.require(:student_award).permit(:student_id, :award_id, :discipline_id, :reason)
    end
end
