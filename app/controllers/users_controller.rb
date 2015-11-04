class UsersController < ApplicationController
  before_action :set_Users, only: [:show, :edit, :update, :destroy]

  # GET /users
  # GET /users.json
  def index
    @users= Users.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
  end

  # GET /users/new
  def new
    @Users = Users.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @Users = Users.new(Users_params)

    respond_to do |format|
      if @Users.save
       format.html { redirect_to @Users, notice: 'Users was successfully created.' }
       format.json { render :show, status: :created, location: @Users}
      else
        format.html { render :new }
        format.json { render json: @Users.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @Users.update(Users_params)
        format.html { redirect_to @Users, notice: 'Users was successfully updated.' }
        format.json { render :show, status: :ok, location: @Users }
      else
        format.html { render :edit }
        format.json { render json: @Users.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /usersFriendMailer.sample_email(@friend).deliver_later/1.json
  def destroy
    @Users.destroy
    respond_to do |format|
      format.html { redirect_to Users_url, notice: 'Users was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_Users
      @Users = Users.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def Users_params
      params.require(:Users).permit(:name, :phone_no, :email, :image, :description)
    end
end
