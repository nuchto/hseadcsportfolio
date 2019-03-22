class ProjectsitesController < ApplicationController
  before_action :set_projectsite, only: [:show, :edit, :update, :destroy]

  # GET /projectsites
  # GET /projectsites.json
  def index
    @projectsites = Projectsite.all
  end

  # GET /projectsites/1
  # GET /projectsites/1.json
  def show
  end

  # GET /projectsites/new
  def new
    @projectsite = Projectsite.new
  end

  # GET /projectsites/1/edit
  def edit
  end

  # POST /projectsites
  # POST /projectsites.json
  def create
    @projectsite = Projectsite.new(projectsite_params)

    respond_to do |format|
      if @projectsite.save
        format.html { redirect_to @projectsite, notice: 'Projectsite was successfully created.' }
        format.json { render :show, status: :created, location: @projectsite }
      else
        format.html { render :new }
        format.json { render json: @projectsite.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /projectsites/1
  # PATCH/PUT /projectsites/1.json
  def update
    respond_to do |format|
      if @projectsite.update(projectsite_params)
        format.html { redirect_to @projectsite, notice: 'Projectsite was successfully updated.' }
        format.json { render :show, status: :ok, location: @projectsite }
      else
        format.html { render :edit }
        format.json { render json: @projectsite.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projectsites/1
  # DELETE /projectsites/1.json
  def destroy
    @projectsite.destroy
    respond_to do |format|
      format.html { redirect_to projectsites_url, notice: 'Projectsite was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_projectsite
      @projectsite = Projectsite.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def projectsite_params
      params.require(:projectsite).permit(:level, :group_id, :name, :worksite)
    end
end
