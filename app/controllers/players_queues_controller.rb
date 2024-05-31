class PlayersQueuesController < ApplicationController
  before_action :set_players_queue, only: %i[ show edit update destroy ]

  # GET /players_queues or /players_queues.json
  def index
    @players_queues = PlayersQueue.all
  end

  # GET /players_queues/1 or /players_queues/1.json
  def show
  end

  # GET /players_queues/new
  def new
    @players_queue = PlayersQueue.new
  end

  # GET /players_queues/1/edit
  def edit
  end

  # POST /players_queues or /players_queues.json
  def create
    @players_queue = PlayersQueue.new(players_queue_params)

    respond_to do |format|
      if @players_queue.save
        format.html { redirect_to players_queue_url(@players_queue), notice: "Players queue was successfully created." }
        format.json { render :show, status: :created, location: @players_queue }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @players_queue.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /players_queues/1 or /players_queues/1.json
  def update
    respond_to do |format|
      if @players_queue.update(players_queue_params)
        format.html { redirect_to players_queue_url(@players_queue), notice: "Players queue was successfully updated." }
        format.json { render :show, status: :ok, location: @players_queue }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @players_queue.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /players_queues/1 or /players_queues/1.json
  def destroy
    @players_queue.destroy!

    respond_to do |format|
      format.html { redirect_to players_queues_url, notice: "Players queue was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_players_queue
      @players_queue = PlayersQueue.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def players_queue_params
      params.require(:players_queue).permit(:players, :user_id, :room_id)
    end
end
