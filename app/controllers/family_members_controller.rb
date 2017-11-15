class FamilyMembersController < ApplicationController
  # def index
  #   @family_members = FamilyMember.all
  # end

  def new
    @family = Family.find(params[:family_id])
    @parent = FamilyMember.find(params[:parent_id])
    @family_member = @family.@family_members.new(parent_id: params[:parent_id])
  end

  def create
    @family = Family.find(params[:family_id])
    @family_member = @family.family_members.new(family_member_params)


    if @family_member.save
      flash[:notice] = "Family member was saved."
       redirect_to @family
     else
       flash[:alert] = "There was an error saving the family member. Please try again."
       render :new
     end
  end

  def show
    @family_member = FamilyMember.find(params[:id])
  end

  def edit
    @family_member = FamilyMember.find(params[:id])
  end

  def destroy
    @family_member = FamilyMember.find(params[:id])
    if @family_member.destroy
      flash[:notice] = "#{family_member.first_name} #{family_member.last_name_now} was deleted"
      redirect_to @family
    else
      flash[:alert] = "There was an error deleting the family member. Please try again"
      redirect_to @family
    end
  end

  private

  def family_member_params
    params.require(:family_member).permit(:first_name, :last_name_birth, :last_name_now, :gender, :birthday, :this_person_is_living, :parent_id)
  end
end
