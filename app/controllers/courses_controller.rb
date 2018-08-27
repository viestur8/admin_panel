class CoursesController < ApplicationController

  def index
    @courses = Course.all
  end

end

# displays signup form
#   with all fields for user fill in
get "/courses/new" do
  erb :new
end

#Here that info is being collected.
post "/courses/new" do
  user = User.create(
    first_name: params[:first_name],
    last_name: params[:last_name],
    email: params[:email],
    birthday: params[:birthday],
    username: params[:username],
    password: params[:password]
  )
  # # this line does the signing in
  # session[:user_id] = user.id
  #
  # # lets the user know they have signed up
  # flash[:info] = "Thank you for signing up"
  #
  # # assuming this page exists
  # redirect "/blogposts"
end
