FactoryGirl.define do
  factory :user do
    nick 'Johny'
    password '123456'
    password_confirmation '123456'
  end

  factory :another_user do
    nick 'Locky'
    password 'Sweety'
    password_confirmation 'Sweety'
  end

  factory :invalid_user do
    nick nil
    password nil
    password_confirmation nil
  end
end
