class ProjectportfoliosController < ApplicationController
  before_action :set_projectportfolio, only: [:show, :edit, :update, :destroy]

  # GET /projectportfolios
  # GET /projectportfolios.json
  def index
    @projectportfolios = Projectportfolio.all
  end

  # GET /projectportfolios/1
  # GET /projectportfolios/1.json
  def show
  end

  # GET /projectportfolios/new
  def new
    @projectportfolio = Projectportfolio.new
  end

  # GET /projectportfolios/1/edit
  def edit
  end

  # POST /projectportfolios
  # POST /projectportfolios.json
  def create
    @projectportfolio = Projectportfolio.new(projectportfolio_params)

    respond_to do |format|
      if @projectportfolio.save
        format.html { redirect_to @projectportfolio, notice: 'Projectportfolio was successfully created.' }
        format.json { render :show, status: :created, location: @projectportfolio }
      else
        format.html { render :new }
        format.json { render json: @projectportfolio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /projectportfolios/1
  # PATCH/PUT /projectportfolios/1.json
  def update
    respond_to do |format|
      if @projectportfolio.update(projectportfolio_params)
        format.html { redirect_to @projectportfolio, notice: 'Projectportfolio was successfully updated.' }
        format.json { render :show, status: :ok, location: @projectportfolio }
      else
        format.html { render :edit }
        format.json { render json: @projectportfolio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projectportfolios/1
  # DELETE /projectportfolios/1.json
  def destroy
    @projectportfolio.destroy
    respond_to do |format|
      format.html { redirect_to projectportfolios_url, notice: 'Projectportfolio was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_projectportfolio
      @projectportfolio = Projectportfolio.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def projectportfolio_params
      params.require(:projectportfolio).permit(:level, :group_id, :name, :workportfolio)
    end
end
