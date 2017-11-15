class FamilyMember < ActiveRecord::Base
  belongs_to :family
  has_ancestry

  def full_name
    "#{full_name} #{last_name_now}"
  end
end
