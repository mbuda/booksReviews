FactoryGirl.define do
  factory :book do
    title 'Examplification'
    author 'John Doe'
  end

  factory :another_book, class: Book do
    title 'Lovela'
    author 'Sue Sue'
  end

  factory :invalid_book, class: Book do
    title nil
    author nil
  end
end
