class UsersController < ApplicationController
  before_filter :require_no_user, :only => [:new, :create]
  , :only => [:show, :edit, :update]

  def index
    if @current_user
      redirect_to :action => :show
    else
      redirect_to :action => :new
    end
  end
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:notice] = "User registered!"
      redirect_back_or_default users_url
    else
      render :action => :new
    end
  end
  
  def show
    @user = @current_user
  end

  def edit
    @user = @current_user
  end
  
  def update
    @user = @current_user # makes our views "cleaner" and more consistent
    if @user.update_attributes(params[:user])
      flash[:notice] = "User updated!"
      redirect_to users_url
    else
      render :action => :edit
    end
  end
end