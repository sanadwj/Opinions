class OpinionsController < ApplicationController
  before_action :set_tweet, only: [:show, :edit, :update, :destroy]

  # GET /Opinions
  # GET /Opinions.json
  def index
    @opinions = Opinion.all
  end

  # GET /Opinions/1
  # GET /Opinions/1.json
  def show
  end

  # GET /Opinions/new
  def new
    @opinion = Opinion.new
  end

  # GET /Opinions/1/edit
  def edit
  end

  # POST /Opinions
  # POST /Opinions.json
  def create
    @opinion = Opinion.new(tweet_params)

    respond_to do |format|
      if @opinion.save
        format.html { redirect_to @opinion, notice: 'Opinion was successfully created.' }
        format.json { render :show, status: :created, location: @opinion }
      else
        format.html { render :new }
        format.json { render json: @opinion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /Opinions/1
  # PATCH/PUT /Opinions/1.json
  def update
    respond_to do |format|
      if @opinion.update(tweet_params)
        format.html { redirect_to @opinion, notice: 'Opinion was successfully updated.' }
        format.json { render :show, status: :ok, location: @opinion }
      else
        format.html { render :edit }
        format.json { render json: @opinion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /Opinions/1
  # DELETE /Opinions/1.json
  def destroy
    @opinion.destroy
    respond_to do |format|
      format.html { redirect_to opinions_url, notice: 'Opinion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tweet
      @opinion = Opinion.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tweet_params
      params.require(:opinion).permit(:user)
    end
end
