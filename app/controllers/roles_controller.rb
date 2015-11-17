class RolesController < ApplicationController
  before_action :set_rol, only: [:show, :edit, :update, :destroy]
  before_action :get_all, only: [:index, :create, :update, :destroy]

  # GET /users
  # GET /users.json
  def index
     @roles = Rol.search(params[:search]).page(params[:page]).per_page(2)
    respond_to do |format|
      format.html
      format.json
    end
  end
  # GET /blogs/1
  # GET /blogs/1.json
  def show
    @rol = Rol.find_by(id: params[:id])
  end

  # GET /epss/new
  def new
    @rol = Rol.new
  end

  # GET /epss/1/edit
  def edit
    @rol = Rol.find_by(id: params[:id])
  end

  # POST /epss
  # POST /epss.json
  def create
    @rol = Rol.create(rol_params)
  end

  # PATCH/PUT /epss/
  # PATCH/PUT /epss/1.json
  def update
    respond_to do |format|
      if @rol.update(rol_params)
        format.html { redirect_to @rol, notice: 'eps was successfully updated.' }
        format.json { render :show, status: :ok, location: @rol }
      else
        format.html { render :edit }
        format.json { render json: @rol.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /epss/1
  # DELETE /epss/1.json
  def destroy
    @rol = Rol.find_by(id: params[:id])
    if @rol.destroy
      redirect_to roles_url
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rol
      @rol = Rol.find(params[:id])
    end

    def get_all
      @roles = Rol.search(params[:search]).page(params[:page]).per_page(2)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rol_params
      params.require(:rol).permit(:name, :restrictions)
    end
end
