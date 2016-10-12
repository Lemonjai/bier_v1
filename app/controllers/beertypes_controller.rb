class BeertypesController < ApplicationController
  before_action :set_beertype, only: [:show, :edit, :update, :destroy]

  # GET /beertypes
  # GET /beertypes.json
  def index
    @beertypes = Beertype.all
  end

  # GET /beertypes/1
  # GET /beertypes/1.json
  def show
  end

  # GET /beertypes/new
  def new
    @beertype = Beertype.new
  end

  # GET /beertypes/1/edit
  def edit
  end

  # POST /beertypes
  # POST /beertypes.json
  def create
    @beertype = Beertype.new(beertype_params)

    respond_to do |format|
      if @beertype.save
        format.html { redirect_to @beertype, notice: 'Beertype was successfully created.' }
        format.json { render :show, status: :created, location: @beertype }
      else
        format.html { render :new }
        format.json { render json: @beertype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /beertypes/1
  # PATCH/PUT /beertypes/1.json
  def update
    respond_to do |format|
      if @beertype.update(beertype_params)
        format.html { redirect_to @beertype, notice: 'Beertype was successfully updated.' }
        format.json { render :show, status: :ok, location: @beertype }
      else
        format.html { render :edit }
        format.json { render json: @beertype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /beertypes/1
  # DELETE /beertypes/1.json
  def destroy
    @beertype.destroy
    respond_to do |format|
      format.html { redirect_to beertypes_url, notice: 'Beertype was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_beertype
      @beertype = Beertype.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def beertype_params
      params.require(:beertype).permit(:name)
    end
end
