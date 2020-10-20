class UsersController < ApplicationController
  include TheUser
  before_action :set_user
  before_action :authenticate_user!
  before_action :user_signed_in?



  def index
    @users = User.all
    @mutual_friends = User.where(id: show_two_friends)

  end

  def show
    @user = User.find(params[:id])
    @opinion = @user.opinions

    respond_to do |format|
      if @user
        format.html
        format.js { @current_user = @user }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end


  private

  def show_mutual_friends
    @ids = []
    current_user.friends.each do |person|
      person.friends.each do |m|
        @ids << m.id
      end
    end
    @ids.reject { |x| x == current_user.id }
  end

  def show_two_friends
    show_mutual_friends.sample(2)
  end
end
