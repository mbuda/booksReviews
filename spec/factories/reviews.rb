FactoryGirl.define do
  factory :review do
    title 'Example'
    description 'Everything is awesome'
  end

  factory :another_review do
    title 'Love in the air'
    description 'So sweet'
  end

  factory :invalid_review do
    title nil
    description nil
  end
end
