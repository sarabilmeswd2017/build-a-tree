class FamilyMember < ActiveRecord::Base
  belongs_to :family
  has_ancestry

  def full_name
    "#{first_name} #{last_name_now}"
  end
end
