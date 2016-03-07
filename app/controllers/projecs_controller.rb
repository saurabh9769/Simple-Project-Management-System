class ProjecsController < ApplicationController
  before_action :set_projec, only: [:show, :edit, :update, :destroy]

  # GET /projecs
  # GET /projecs.json
  def index
    @projecs = Projec.all
  end

  # GET /projecs/1
  # GET /projecs/1.json
  def show
  end

  # GET /projecs/new
  def new
    @projec = Projec.new
  end

  # GET /projecs/1/edit
  def edit
  end

  # POST /projecs
  # POST /projecs.json
  def create
    @projec = Projec.new(projec_params)

    respond_to do |format|
      if @projec.save
        format.html { redirect_to @projec, notice: 'Projec was successfully created.' }
        format.json { render :show, status: :created, location: @projec }
      else
        format.html { render :new }
        format.json { render json: @projec.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /projecs/1
  # PATCH/PUT /projecs/1.json
  def update
    respond_to do |format|
      if @projec.update(projec_params)
        format.html { redirect_to @projec, notice: 'Projec was successfully updated.' }
        format.json { render :show, status: :ok, location: @projec }
      else
        format.html { render :edit }
        format.json { render json: @projec.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projecs/1
  # DELETE /projecs/1.json
  def destroy
    @projec.destroy
    respond_to do |format|
      format.html { redirect_to projecs_url, notice: 'Projec was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_projec
      @projec = Projec.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def projec_params
      params.require(:projec).permit(:name, :description, :start_date, :end_date)
    end
end
