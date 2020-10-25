class FollowersController < ApplicationController
  before_action :set_follower, only: [:show, :edit, :update, :destroy]

  # GET /followers
  # GET /followers.json
  # def index
  #   @followers = Follower.all
  # end

  # GET /followers/1
  # GET /followers/1.json
  # def show
  # end

  # # GET /followers/new
  # def new
  #   @follower = Follower.new
  # end

  # # GET /followers/1/edit
  # def edit
  # end

  # POST /followers
  # POST /followers.json
  def create
    @follower = current_user.followers.build(follower_id: params[:user_id], confirmed: true )


    if @follower.save
      redirect_to user_path(id: @follower.follower_id), notice: 'Following successful.'
    else
      redirect_to opinions_path, alert: @follower.errors.full_messages.join('. ').to_s
    end

  end

  # PATCH/PUT /followers/1
  # PATCH/PUT /followers/1.json
  # def update
  #   respond_to do |format|
  #     if @follower.update(follower_params)
  #       format.html { redirect_to @follower, notice: 'Follower was successfully updated.' }
  #       format.json { render :show, status: :ok, location: @follower }
  #     else
  #       format.html { render :edit }
  #       format.json { render json: @follower.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # DELETE /followers/1
  # DELETE /followers/1.json
  def reject

      @follower = Follower.find_by(follower_id: params[:follower_id], user_id: params[:user_id])
      @follower = Follower.find_by(follower_id: params[:user_id], user_id: params[:follower_id]) if @follower.nil?
      @follower.destroy
      redirect_to opinions_path, notice: 'Unfollowed'

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_follower
      @follower = Follower.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def follower_params
      params.require(:follower).permit(:user_id, :follower_id, :confirmed)
    end
end
