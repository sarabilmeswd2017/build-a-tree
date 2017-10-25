class AddAncestryToFamilyMembers < ActiveRecord::Migration
  def change
    add_column :family_members, :ancestry, :string
    add_index :family_members, :ancestry
  end
end
