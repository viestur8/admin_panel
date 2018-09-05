class CoursesController < ApplicationController
  before_action :set_course, only: [:destroy]
  def index
    @courses = Course.all
  end

  def show
        @course = Course.find(params[:id])
    end

    def new
        @course = Course.new
        # displays signup form
        #   with all fields for user fill in
    end

    def edit
        @course = Course.find(params[:id])
    end

    def create
        @course = Course.create(course_params)
        if @course.save
            redirect_to courses_path
        else
            render 'new'
        end
    end

    def update
        @course = Course.find(params[:id])
        @courses = Course.all

         @course.update(course_params)
            redirect_to "/courses"
    end

    def destroy
        @course = Course.find(params[:id])
        @course.destroy
        redirect_to courses_path
    end

    private
        def course_params
            params.require(:course).permit(:name, :total_hours)
        end

        def set_course
          @course = Course.find(params[:id])
        end

end

# get "/courses_path/new" do
#   erb :new
# end

#Here that info is being collected.
# post "/courses_path/new" do
#   user = User.create(
#     first_name: params[:first_name],
#     last_name: params[:last_name],
#     email: params[:email],
#     birthday: params[:birthday],
#     username: params[:username],
#     password: params[:password]
#   )
#   # # this line does the signing in
#   # session[:user_id] = user.id
#   #
#   # # lets the user know they have signed up
#   # flash[:info] = "Thank you for signing up"
#   #
#   # # assuming this page exists
#   # redirect "/blogposts"
# end
