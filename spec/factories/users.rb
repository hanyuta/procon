FactoryBot.define do
  factory :user do
    email                 { Faker::Internet.email }
    password              { '1a' + Faker::Internet.password(min_length: 6) }
    password_confirmation { password }
    first_name            { '太郎' }
    last_name             { '田中' }
    admin_true            {  true  }
  end
end