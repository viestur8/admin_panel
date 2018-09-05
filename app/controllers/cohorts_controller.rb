class CohortsController < ApplicationController

  def index
    @cohorts = Cohort.all
end
def show
      @cohort = Cohort.find(params[:id])

  end

  def new
      @cohort = Cohort.new
      # displays signup form
      #   with all fields for user fill in
  end

  def edit
      @cohort = Cohort.find(params[:id])

  end

  def create
      @cohort = Cohort.create(cohort_params)
      if @cohort.save
          redirect_to cohorts_path
      else
          render 'new'
      end
  end

  def update
      @cohort = Cohort.find(params[:id])
      @cohort.update(cohort_params)
      redirect_to "/cohorts"
  end


  def destroy
      @cohort = Cohort.find(params[:id])
      @cohort.destroy

      redirect_to cohorts_path
  end

  private
  def cohort_params
      params.require(:cohort).permit(:title, :start_date, :end_date, :students_in_cohort, :course_id, :teacher_id)
  end
      def set_cohort
        @cohort = Cohort.find(params[:id])
      end
end
