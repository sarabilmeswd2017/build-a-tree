class FamilyMembersController < ApplicationController
  def index
    @family_members = FamilyMember.all
    @family_member = FamilyMember.new
    @family_member = FamilyMember.find(params[:id])
  end

  def new
    @family_member = FamilyMember.new
  end

  def create
    
  end

  def show
  end

  def edit
  end

  def delete
  end
end
