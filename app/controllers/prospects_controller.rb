class ProspectsController < ApplicationController
  skip_before_action :verify_authenticity_token

  before_action :set_prospect, only: [:show, :edit, :update, :destroy, :advance, :revert, :note]

  # GET /prospects
  # GET /prospects.json
  def index
    @prospects = Prospect.all.reverse
  end

  # GET /prospects/1
  # GET /prospects/1.json
  def show
  end

  # GET /prospects/new
  def new
    @prospect = Prospect.new
  end

  # GET /prospects/1/edit
  def edit
  end

  # POST /prospects
  # POST /prospects.json
  def create
    @prospect = Prospect.new(prospect_params)

    respond_to do |format|
      if @prospect.save
        format.html { redirect_to @prospect, notice: 'Prospect was successfully created.' }
        format.json { render :show, status: :created, location: @prospect }
      else
        format.html { render :new }
        format.json { render json: @prospect.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prospects/1
  # PATCH/PUT /prospects/1.json
  def update
    respond_to do |format|
      if @prospect.update(prospect_params)
        format.html { redirect_to @prospect, notice: 'Prospect was successfully updated.' }
        format.json { render :show, status: :ok, location: @prospect }
      else
        format.html { render :edit }
        format.json { render json: @prospect.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prospects/1/advance
  def advance
    @prospect.advance!
    redirect_to prospects_url
  end

  # PATCH/PUT /prospects/1/revert
  def revert
    @prospect.revert!
    redirect_to prospects_url
  end

  # POST /prospects/1/notes
  def note
    @prospect.notes << Note.new(body: note_params)
    redirect_to prospects_url
  end

  # DELETE /prospects/1
  # DELETE /prospects/1.json
  def destroy
    @prospect.destroy
    respond_to do |format|
      format.html { redirect_to prospects_url, notice: 'Prospect was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prospect
      @prospect = Prospect.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prospect_params
      params.require(:prospect).permit(:company_name, :position_name, :recruiter_name, :stage_name, :note)
    end

    def note_params
      params.require(:body)
    end
end
