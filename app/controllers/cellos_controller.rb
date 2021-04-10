class CellosController < ApplicationController
  before_action :set_cello, only: %i[ show edit update destroy ]

  # GET /cellos or /cellos.json
  def index
    @cellos = Cello.all
  end

  # GET /cellos/1 or /cellos/1.json
  def show
  end

  # GET /cellos/new
  def new
    @cello = Cello.new
  end

  # GET /cellos/1/edit
  def edit
  end

  # POST /cellos or /cellos.json
  def create
    @cello = Cello.new(cello_params)

    respond_to do |format|
      if @cello.save
        format.html { redirect_to @cello, notice: "Cello was successfully created." }
        format.json { render :show, status: :created, location: @cello }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cello.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cellos/1 or /cellos/1.json
  def update
    respond_to do |format|
      if @cello.update(cello_params)
        format.html { redirect_to @cello, notice: "Cello was successfully updated." }
        format.json { render :show, status: :ok, location: @cello }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cello.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cellos/1 or /cellos/1.json
  def destroy
    @cello.destroy
    respond_to do |format|
      format.html { redirect_to cellos_url, notice: "Cello was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cello
      @cello = Cello.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cello_params
      params.require(:cello).permit(:name, :phone, rentals_attributes: [:id, :bike_id, :start, :return, :_destroy])
    end
end
