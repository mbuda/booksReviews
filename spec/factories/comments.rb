FactoryGirl.define do
  factory :comment do
    text 'I totally disagree'
  end

  factory :another_comment do
    text 'I totally agree'
  end

  factory :invalid_comment do
    text nil
  end
end
