class HotlinesController < ApplicationController
  before_action :set_hotline, only: [:show, :edit, :update, :destroy]

  # GET /hotlines
  # GET /hotlines.json
  def index
    @hotlines = Hotline.all
  end

  # GET /hotlines/1
  # GET /hotlines/1.json
  def show
  end

  # GET /hotlines/new
  def new
    @hotline = Hotline.new
  end

  # GET /hotlines/1/edit
  def edit
  end

  # POST /hotlines
  # POST /hotlines.json
  def create
    @hotline = Hotline.new(hotline_params)

    respond_to do |format|
      if @hotline.save
        format.html { redirect_to @hotline, notice: 'Hotline was successfully created.' }
        format.json { render :show, status: :created, location: @hotline }
      else
        format.html { render :new }
        format.json { render json: @hotline.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hotlines/1
  # PATCH/PUT /hotlines/1.json
  def update
    respond_to do |format|
      if @hotline.update(hotline_params)
        format.html { redirect_to @hotline, notice: 'Hotline was successfully updated.' }
        format.json { render :show, status: :ok, location: @hotline }
      else
        format.html { render :edit }
        format.json { render json: @hotline.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hotlines/1
  # DELETE /hotlines/1.json
  def destroy
    @hotline.destroy
    respond_to do |format|
      format.html { redirect_to hotlines_url, notice: 'Hotline was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hotline
      @hotline = Hotline.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hotline_params
      params.require(:hotline).permit(:name, :number, :link, :donate, :category, :hours, :description)
    end
end
