class PokersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_poker, only: [:show, :edit, :update, :destroy]

  # GET /pokers
  # GET /pokers.json
  def index
    @pokers = Poker.where(user_id: current_user.id)
  end

  # GET /pokers/1
  # GET /pokers/1.json
  def show
  end

  # GET /pokers/new
  def new
    @poker = Poker.new
  end

  # GET /pokers/1/edit
  def edit
  end

  # GET /pokers/new/:id_userstory
  def newpoker
    @poker = Poker.new
    if params[:id_us].present?
      @us = UserStory.find(params[:id_us])
    else
      redirect_to user_stories_path, notice: 'User story não encontrada'
    end
  end

  # POST /pokers
  # POST /pokers.json
  def create
    @poker = Poker.new(poker_params)
    @poker.user = current_user
    respond_to do |format|
      if @poker.save
        format.html { redirect_to @poker, notice: 'Poker was successfully created.' }
        format.json { render :show, status: :created, location: @poker }
      else
        format.html { render :new }
        format.json { render json: @poker.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pokers/1
  # PATCH/PUT /pokers/1.json
  def update
    respond_to do |format|
      if @poker.update(poker_params)
        format.html { redirect_to @poker, notice: 'Poker was successfully updated.' }
        format.json { render :show, status: :ok, location: @poker }
      else
        format.html { render :edit }
        format.json { render json: @poker.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_poker
      @poker = Poker.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def poker_params
      params.require(:poker).permit(:user_story_id, :note)
    end
end
