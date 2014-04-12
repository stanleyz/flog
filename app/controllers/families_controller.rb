class FamiliesController < ApplicationController
  before_action :set_family, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @families = Family.all
  end

  def show
    @posts = @family.posts.all
  end

  def new
    @family = Family.new
  end

  def edit
  end

  def create
    @family = Family.new(family_params)
    family_user = FamilyUser.new
    family_user.user = current_user
    family_user.admin = true
    @family.members << family_user

    respond_to do |format|
      if @family.save
        format.html { redirect_to user_root_path, notice: 'Family was successfully created.' }
        format.json { render action: 'show', status: :created, location: @family }
      else
        format.html { render action: 'new' }
        format.json { render json: @family.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @family.update(family_params)
        format.html { redirect_to user_root_path, notice: 'Family was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @family.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @family.destroy
    respond_to do |format|
      format.html { redirect_to user_root_path }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_family
      @family = Family.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def family_params
      params[:family].permit(:name)
    end
end
