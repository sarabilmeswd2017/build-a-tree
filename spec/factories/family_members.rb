FactoryGirl.define do
  factory :family_member do
    first_name "MyString"
    last_name_birth "MyString"
    last_name_now "MyString"
    gender "MyString"
    birthday "2017-10-19 13:36:35"
    this_person_is_living false
    family nil
  end
end
