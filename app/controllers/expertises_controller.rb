class ExpertisesController < ApplicationController
  before_action :set_expertise, only: [:show, :edit, :update, :destroy]

  # GET /expertises
  def index
    @expertises = Expertise.all
  end

  # GET /expertises/1
  def show
  end

  # GET /expertises/new
  def new
    @expertise = current_user.expertises.new
  end

  # GET /expertises/1/edit
  def edit
  end

  # POST /expertises
  def create
    @expertise = current_user.expertises.build(expertise_params)

      if @expertise.save
        redirect_to new_expertise_path, notice: 'Expertise was successfully created.' 
      else
        render :new, notice: "Couldn't create new expertise"  
      end
  end

  # PATCH/PUT /expertises/1
  def update
      if @expertise.update(expertise_params)
        redirect_to new_expertise_path, notice: 'Expertise was successfully updated.' 
      else
        render :edit 
      end
  end

  # DELETE /expertises/1
  def destroy
    @expertise.destroy
    redirect_to new_expertise_path, notice: 'Expertise was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_expertise
      @expertise = current_user.expertises.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def expertise_params
      params.require(:expertise).permit(:title, :description)
    end
end
