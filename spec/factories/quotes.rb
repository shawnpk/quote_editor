FactoryBot.define do
  factory :first, class: 'Quote' do
    company { association :kpmg }
    name { "First quote" }
  end

  factory :second, class: 'Quote' do
    company { association :kpmg }
    name { "Second quote" }
  end

  factory :third, class: 'Quote' do
    company { association :kpmg }
    name { "Third quote" }
  end
end
