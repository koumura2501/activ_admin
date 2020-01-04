class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    User.create(user_params)
    redirect_to :action => :index
  end

  def search
    user_search = UserSearch.new(params_user_search)
    @users = user_search.execute
  end

  private

  def user_params
    params.require(:user).permit(:image)
  end

  def params_user_search
    params.permit(:search_name, :search_age)
  end
end
