FactoryBot.define do
  factory :first, class: 'Quote' do
    name { "First quote" }
  end

  factory :second, class: 'Quote' do
    name { "Second quote" }
  end

  factory :third do
    name { "Third quote" }
  end
end
