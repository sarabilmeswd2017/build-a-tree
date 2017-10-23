class FamilyMembersController < ApplicationController
  # def index
  #   @family_members = FamilyMember.all
  # end

  def new
    @family = Family.find(params[:id])
    @family_member = FamilyMember.new
  end

  def create
    @family = Family.find(params[:id])
    @family_member = @family.family_members.new(family_member_params)
    #@family_member = @family.family_members.build(family_member_params)

    if @family_member.save
      flash[:notice] = "Family member was saved."
       redirect_to show_family_path
     else
       flash.now[:alert] = "There was an error saving the family member. Please try again."
       render :new
     end
  end

  def show
    @family_member = FamilyMember.find(params[:id])
  end

  def edit
    @family_member = FamilyMember.find(params[:id])
  end

  def delete
  end

  private

  def family_member_params
    params.require(:family_member).permit(:first_name, :last_name_birth, :last_name_now, :gender, :birthday, :this_person_is_living)
  end
end
