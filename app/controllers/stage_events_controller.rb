class StageEventsController < ApplicationController
  before_action :set_stage_event, only: [:show, :edit, :update, :destroy]

  # GET /stage_events
  # GET /stage_events.json
  def index
    @stage_events = StageEvent.all
  end

  # GET /stage_events/1
  # GET /stage_events/1.json
  def show
  end

  # GET /stage_events/new
  def new
    @stage_event = StageEvent.new
  end

  # GET /stage_events/1/edit
  def edit
  end

  # POST /stage_events
  # POST /stage_events.json
  def create
    @stage_event = StageEvent.new(stage_event_params)

    respond_to do |format|
      if @stage_event.save
        format.html { redirect_to @stage_event, notice: 'Stage event was successfully created.' }
        format.json { render :show, status: :created, location: @stage_event }
      else
        format.html { render :new }
        format.json { render json: @stage_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stage_events/1
  # PATCH/PUT /stage_events/1.json
  def update
    respond_to do |format|
      if @stage_event.update(stage_event_params)
        format.html { redirect_to @stage_event, notice: 'Stage event was successfully updated.' }
        format.json { render :show, status: :ok, location: @stage_event }
      else
        format.html { render :edit }
        format.json { render json: @stage_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stage_events/1
  # DELETE /stage_events/1.json
  def destroy
    @stage_event.destroy
    respond_to do |format|
      format.html { redirect_to stage_events_url, notice: 'Stage event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stage_event
      @stage_event = StageEvent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stage_event_params
      params.require(:stage_event).permit(:prospect_id, :stage_name)
    end
end
