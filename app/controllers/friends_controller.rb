class FriendsController < ApplicationController
  before_action :set_friends, only: [:show, :edit, :update, :destroy]

  # GET /friends
  # GET /friends.json
  def index
    @friends = Friend.all
  end

  # GET /friends/1
  # GET /friends/1.json
  def show
  end

  # GET /friends/new
  def new
    @friends = Friend.new
  end

  # GET /friends/1/edit
  def edit
  end

  # POST /friends
  # POST /friends.json
  def create
    @friends = Friend.new(friends_params)

    respond_to do |format|
      if @friends.save
         FriendsMailer.sample_email(@friends).deliver_later
        format.html { redirect_to @friends, notice: 'Friends was successfully created.' }
        format.json { render :show, status: :created, location: @friend }
      else
        format.html { render :new }
        format.json { render json: @friends.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /friends/1
  # PATCH/PUT /friends/1.json
  def update
    respond_to do |format|
      if @friends.update(friends_params)
        format.html { redirect_to @friends, notice: 'Friends was successfully updated.' }
        format.json { render :show, status: :ok, location: @friend }
      else
        format.html { render :edit }
        format.json { render json: @friends.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /friends/1
  # DELETE /friends/1.json
  def destroy
    @friends.destroy
    respond_to do |format|
      format.html { redirect_to frndz_url, notice: 'Friends was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_friend
      @friend = Friends.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def friends_params
      params.require(:friends).permit(:name, :email, :phone_no, :description)
    end
end
