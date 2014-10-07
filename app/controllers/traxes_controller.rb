class TraxesController < ApplicationController
  before_action :set_trax, only: [:show, :edit, :update, :destroy]

  # GET /traxes
  # GET /traxes.json
  def index
    @traxes = Trax.all
  end

  # GET /traxes/1
  # GET /traxes/1.json
  def show
  end

  # GET /traxes/new
  def new
    @trax = Trax.new
  end

  # GET /traxes/1/edit
  def edit
  end

  # POST /traxes
  # POST /traxes.json
  def create
    @trax = Trax.new(trax_params)

    respond_to do |format|
      if @trax.save
        format.html { redirect_to @trax, notice: 'Trax was successfully created.' }
        format.json { render :show, status: :created, location: @trax }
      else
        format.html { render :new }
        format.json { render json: @trax.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /traxes/1
  # PATCH/PUT /traxes/1.json
  def update
    respond_to do |format|
      if @trax.update(trax_params)
        format.html { redirect_to @trax, notice: 'Trax was successfully updated.' }
        format.json { render :show, status: :ok, location: @trax }
      else
        format.html { render :edit }
        format.json { render json: @trax.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /traxes/1
  # DELETE /traxes/1.json
  def destroy
    @trax.destroy
    respond_to do |format|
      format.html { redirect_to traxes_url, notice: 'Trax was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trax
      @trax = Trax.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trax_params
      params.require(:trax).permit(:nom, :description)
    end
end
