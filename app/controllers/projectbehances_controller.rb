class ProjectbehancesController < ApplicationController
  before_action :set_projectbehance, only: [:show, :edit, :update, :destroy]

  # GET /projectbehances
  # GET /projectbehances.json
  def index
    @projectbehances = Projectbehance.all
  end

  # GET /projectbehances/1
  # GET /projectbehances/1.json
  def show
  end

  # GET /projectbehances/new
  def new
    @projectbehance = Projectbehance.new
  end

  # GET /projectbehances/1/edit
  def edit
  end

  # POST /projectbehances
  # POST /projectbehances.json
  def create
    @projectbehance = Projectbehance.new(projectbehance_params)

    respond_to do |format|
      if @projectbehance.save
        format.html { redirect_to @projectbehance, notice: 'Projectbehance was successfully created.' }
        format.json { render :show, status: :created, location: @projectbehance }
      else
        format.html { render :new }
        format.json { render json: @projectbehance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /projectbehances/1
  # PATCH/PUT /projectbehances/1.json
  def update
    respond_to do |format|
      if @projectbehance.update(projectbehance_params)
        format.html { redirect_to @projectbehance, notice: 'Projectbehance was successfully updated.' }
        format.json { render :show, status: :ok, location: @projectbehance }
      else
        format.html { render :edit }
        format.json { render json: @projectbehance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projectbehances/1
  # DELETE /projectbehances/1.json
  def destroy
    @projectbehance.destroy
    respond_to do |format|
      format.html { redirect_to projectbehances_url, notice: 'Projectbehance was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_projectbehance
      @projectbehance = Projectbehance.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def projectbehance_params
      params.require(:projectbehance).permit(:level, :group_id, :name, :workbehance)
    end
end
