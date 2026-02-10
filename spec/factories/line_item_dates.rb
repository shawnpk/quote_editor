FactoryBot.define do
  factory :today, class: LineItemDate do
    quote { association :first }
    date { Date.current }
  end

  factory :next_week, class: LineItemDate do
     quote { association :first }
     date { Date.current + 1.week }
  end
end
