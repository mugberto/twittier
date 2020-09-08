class TweetiesController < ApplicationController
  before_action :set_tweety, only: %i[show edit update destroy]

  # GET /tweeties
  # GET /tweeties.json
  def index
    @tweeties = Tweety.all
  end

  # GET /tweeties/1
  # GET /tweeties/1.json
  def show; end

  # GET /tweeties/new
  def new
    @tweety = Tweety.new
  end

  # GET /tweeties/1/edit
  def edit; end

  # POST /tweeties
  # POST /tweeties.json
  def create
    @tweety = Tweety.new(tweety_params)

    respond_to do |format|
      if @tweety.save
        format.html { redirect_to @tweety, notice: 'Tweety was successfully created.' }
        format.json { render :show, status: :created, location: @tweety }
      else
        format.html { render :new }
        format.json { render json: @tweety.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tweeties/1
  # PATCH/PUT /tweeties/1.json
  def update
    respond_to do |format|
      if @tweety.update(tweety_params)
        format.html { redirect_to @tweety, notice: 'Tweety was successfully updated.' }
        format.json { render :show, status: :ok, location: @tweety }
      else
        format.html { render :edit }
        format.json { render json: @tweety.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tweeties/1
  # DELETE /tweeties/1.json
  def destroy
    @tweety.destroy
    respond_to do |format|
      format.html { redirect_to tweeties_url, notice: 'Tweety was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_tweety
    @tweety = Tweety.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def tweety_params
    params.require(:tweety).permit(:message)
  end
end
