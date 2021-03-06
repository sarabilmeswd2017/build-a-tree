class FamiliesController < ApplicationController
  def index
    @families = current_user.families
    #@families = Family.all
  end

  def new
    @family = Family.new
  end

  def create
    @family = current_user.families.new(family_params)

    if @family.save
      flash[:notice] = "Family was saved."
       redirect_to @family
     else
       flash.now[:alert] = "There was an error saving the family. Please try again."
       render :new
     end
  end

  def show
    @family = Family.find(params[:id])
  end

  def destroy
    @family = Family.find(params[:id])
    if @family.destroy
      flash[:notice] = "#{@family.name} was deleted"
      redirect_to families_path
    else
      flash[:alert] = "There was an error deleting the Family. Please try again"
      redirect_to families_path
    end
  end

  private

  def family_params
    params.require(:family).permit(:name)
  end
end
