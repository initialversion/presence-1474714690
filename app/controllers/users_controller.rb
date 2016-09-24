class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new
    @user.name = params[:name]
    @user.last_name = params[:last_name]
    @user.integer1 = params[:integer1]
    @user.integer2 = params[:integer2]
    @user.integer3 = params[:integer3]
    @user.status = params[:status]

    if @user.save
      redirect_to "/users", :notice => "User created successfully."
    else
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])

    @user.name = params[:name]
    @user.last_name = params[:last_name]
    @user.integer1 = params[:integer1]
    @user.integer2 = params[:integer2]
    @user.integer3 = params[:integer3]
    @user.status = params[:status]

    if @user.save
      redirect_to "/users", :notice => "User updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @user = User.find(params[:id])

    @user.destroy

    redirect_to "/users", :notice => "User deleted."
  end
end
