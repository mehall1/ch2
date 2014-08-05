class MicroportsController < ApplicationController
  before_action :set_microport, only: [:show, :edit, :update, :destroy]

  # GET /microports
  # GET /microports.json
  def index
    @microports = Microport.all
  end

  # GET /microports/1
  # GET /microports/1.json
  def show
  end

  # GET /microports/new
  def new
    @microport = Microport.new
  end

  # GET /microports/1/edit
  def edit
  end

  # POST /microports
  # POST /microports.json
  def create
    @microport = Microport.new(microport_params)

    respond_to do |format|
      if @microport.save
        format.html { redirect_to @microport, notice: 'Microport was successfully created.' }
        format.json { render action: 'show', status: :created, location: @microport }
      else
        format.html { render action: 'new' }
        format.json { render json: @microport.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /microports/1
  # PATCH/PUT /microports/1.json
  def update
    respond_to do |format|
      if @microport.update(microport_params)
        format.html { redirect_to @microport, notice: 'Microport was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @microport.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /microports/1
  # DELETE /microports/1.json
  def destroy
    @microport.destroy
    respond_to do |format|
      format.html { redirect_to microports_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_microport
      @microport = Microport.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def microport_params
      params.require(:microport).permit(:content, :user_id)
    end
end
