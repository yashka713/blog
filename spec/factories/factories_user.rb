FactoryGirl.define do
  factory :user do
    first_name 'Bruce'
    last_name  'Wayne'
    email 'wayne@example.com'
    phone '844000000'
    password 'wayne@example.com'
    admin false
  end

  factory :admin, class: User do
    first_name 'Clark'
    last_name  'Kent'
    email 'kent@example.com'
    phone '944000001'
    password 'kent@example.com'
    admin true
  end
end
