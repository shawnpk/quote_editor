FactoryBot.define do
  factory :room_today, class: LineItem do
    line_item_date { association :today }
    name { "Meeting room" }
    description { "A cozy meeting room for 10 people" }
    quantity { 1 }
    unit_price { 1000 }
  end

  factory :catering_today, class: LineItem do
    line_item_date { association :today }
    name { "Meal tray" }
    description { "Our delicious meal tray" }
    quantity { 10 }
    unit_price { 25 }
  end

  factory :room_next_week, class: LineItem do
    line_item_date { association :next_week }
    name { "Meeting Room" }
    description { "A cozy meeting room for 10 people" }
    quantity { 1 }
    unit_price { 1000 }
  end

  factory :catering_next_week, class: LineItem do
    line_item_date { association :next_week }
    name { "Meal tray" }
    description { "Our delicious meal tray" }
    quantity { 10 }
    unit_price { 25 }
  end
end
