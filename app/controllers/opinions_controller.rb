class OpinionsController < ApplicationController
  include TheUser
  before_action :set_user
  before_action :set_opinion, only: %i[show edit update destroy]

  # GET /opinions
  # GET /opinions.json
  def index
    @opinions = Opinion.all.with_rich_text_body.order('created_at DESC').includes(:user)
    @opinion = Opinion.new
  end

  # POST /opinions
  # POST /opinions.json
  def create
    @opinion = @user.opinions.build(opinion_params)

    respond_to do |format|
      if @opinion.save
        format.html { redirect_to(params[:redirect_url]) }
        format.json { render :show, status: :created, location: @opinion }
      else
        format.html { render :new }
        format.json { render json: @opinion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /opinions/1
  # PATCH/PUT /opinions/1.json
  def update
    respond_to do |format|
      if @opinion.update(opinion_params)
        format.html { redirect_to @opinion, notice: 'Opinion was successfully updated.' }
        format.json { render :show, status: :ok, location: @opinion }

        @opinions = Opinion.all.order('created_at DESC')
        ActionCable.server.broadcast 'opinions',
                                     html: render_to_string('opinions/index', layout: false)
      else
        format.html { render :edit }
        format.json { render json: @opinion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /opinions/1
  # DELETE /opinions/1.json
  def destroy
    @opinion.destroy
    respond_to do |format|
      format.html { redirect_to opinions_url, notice: 'Opinion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_opinion
    @opinion = Opinion.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def opinion_params
    params.require(:opinion).permit(:user, :body, :user_id)
  end
end
