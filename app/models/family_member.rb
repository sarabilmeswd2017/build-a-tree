class FamilyMember < ActiveRecord::Base
  belongs_to :family
  has_ancestry
end
