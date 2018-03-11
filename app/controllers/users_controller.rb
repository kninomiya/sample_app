class UsersController < ApplicationController
  before_action :authenticate_user!, :except=>[:show]
  before_action :admin_user,     only: :destroy

  def index
    @users = User.all
  end
  
  def show
    @user = User.find(params[:id])
  end
  
  def index
    @users = User.paginate(page: params[:page])
  end

  private
    
    def admin_user
      redirect_to(root_path) unless current_user.admin?
    end
  
end
