FactoryGirl.define do
  factory :book do
    title 'Examplification'
    author 'John Doe'
  end

  factory :another_book do
    title 'Lovela'
    author 'Sue Sue'
  end

  factory :invalid_book do
    title nil
    author nil
  end
end
