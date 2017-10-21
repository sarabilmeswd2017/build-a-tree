class CreateFamilyMembers < ActiveRecord::Migration
  def change
    create_table :family_members do |t|
      t.string :first_name
      t.string :last_name_birth
      t.string :last_name_now
      t.string :gender
      t.datetime :birthday
      t.boolean :this_person_is_living
      t.references :family, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
