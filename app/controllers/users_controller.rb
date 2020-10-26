class UsersController < ApplicationController
  include TheUser
  before_action :set_user
  before_action :authenticate_user!
  before_action :user_signed_in?

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @new_opinion = Opinion.new

    respond_to do |format|
      if @user
        format.html
        format.js
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  def show_last; end
end
