class StudentsController < ApplicationController

  def home
    render :plain => "Hello Student"
  end

    def index
      @students = Student.all
  end

  def show 
    @students = Student.find(params[:id])

  end

  def new
    @student = Student.new
  end
end
