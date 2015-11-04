class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_action :current_user?, only: [:edit, :update, :destroy]
  skip_before_filter :require_login, only: []

  before_filter :authorize

  # GET /users
  # GET /users.json
  def index
      @users = User.search(params[:search]).page(params[:page]).per_page(10)
  end

  # GET /users/1
  # GET /users/1.json
  def show
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { 
                      flash[:success] = "Registration successful. Please check your email for activation."
                      redirect_back_or_to @user  }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { flash[:danger] = "Registration failed. Please check the data you introduced."
                      render :new   }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { flash[:success] = "Profile successfully updated"
                      redirect_to @user }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { flash[:danger] = "Edit profile failed. Please check the data you introduced."
                      render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { flash[:success] = "User deleted."
                    redirect_to users_url }
      format.json { head :no_content }
    end
  end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:email, :first_name, :second_name, 
        :first_surname, :second_surname, :type_document, :document, 
        :medical_record, :rol_id, :password, :password_confirmation, 
        :picture)
    end
end
