class Family < ActiveRecord::Base
  belongs_to :user
  has_many :family_members
end
