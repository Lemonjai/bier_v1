class WinetypesController < ApplicationController
  before_action :set_winetype, only: [:show, :edit, :update, :destroy]

  # GET /winetypes
  # GET /winetypes.json
  def index
    @winetypes = Winetype.all
  end

  # GET /winetypes/1
  # GET /winetypes/1.json
  def show
  end

  # GET /winetypes/new
  def new
    @winetype = Winetype.new
  end

  # GET /winetypes/1/edit
  def edit
  end

  # POST /winetypes
  # POST /winetypes.json
  def create
    @winetype = Winetype.new(winetype_params)

    respond_to do |format|
      if @winetype.save
        format.html { redirect_to @winetype, notice: 'Winetype was successfully created.' }
        format.json { render :show, status: :created, location: @winetype }
      else
        format.html { render :new }
        format.json { render json: @winetype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /winetypes/1
  # PATCH/PUT /winetypes/1.json
  def update
    respond_to do |format|
      if @winetype.update(winetype_params)
        format.html { redirect_to @winetype, notice: 'Winetype was successfully updated.' }
        format.json { render :show, status: :ok, location: @winetype }
      else
        format.html { render :edit }
        format.json { render json: @winetype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /winetypes/1
  # DELETE /winetypes/1.json
  def destroy
    @winetype.destroy
    respond_to do |format|
      format.html { redirect_to winetypes_url, notice: 'Winetype was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_winetype
      @winetype = Winetype.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def winetype_params
      params.require(:winetype).permit(:name)
    end
end
