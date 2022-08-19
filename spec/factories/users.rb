FactoryBot.define do
  factory :user do
    sequence :email do |n|
    "person#{n}@example.com"
    end
    password { "secret123" }
    username { "Justin" }
  end
end
