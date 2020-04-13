FactoryBot.define do
  factory :user do
    name                    {"tanaka"}
    email                   {"test@gmail.com"}
    password                {"12345678"}
    password_confimation    {"12345678"}
  end
end
