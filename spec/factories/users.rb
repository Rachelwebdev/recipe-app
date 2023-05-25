FactoryBot.define do
  factory :user do
    first_name { 'John Doe' }
    email { 'john@example.com' }
    password { 'password123' }
    confirmed_at { Time.now }
  end
end
