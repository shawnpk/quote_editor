User.destroy_all
Quote.destroy_all
LineItemDate.destroy_all
LineItem.destroy_all
Company.destroy_all

Company.create!([
  { name: "kpmg" },
  { name: "pwc" }
])

Quote.create!([
  { name: "First quote", company: Company.first },
  { name: "Second quote", company: Company.first },
  { name: "Third quote", company: Company.last }
])

User.create!([
  { email: "accountant@kpmg.com", password: "password", password_confirmation: "password", company: Company.first },
  { email: "manager@kpmg.com", password: "password", password_confirmation: "password", company: Company.first },
  { email: "eavesdropper@pwc.com", password: "password", password_confirmation: "password", company: Company.last }
])

LineItemDate.create!([
  { quote: Quote.first, date: Date.current },
  { quote: Quote.first, date: Date.current + 1.week }
])

LineItem.create!([
  { line_item_date: LineItemDate.first, name: "Meeting room", description: "A cozy meeting room for 10 people", quantity: 1, unit_price: 1000 },
  { line_item_date: LineItemDate.first, name: "Meal tray", description: "Our delicious meal tray", quantity: 10, unit_price: 25 },
  { line_item_date: LineItemDate.last, name: "Meeting room", description: "A cozy meeting room for 10 people", quantity: 1, unit_price: 1000 },
  { line_item_date: LineItemDate.last, name: "Meal tray", description: "Our delicious meal tray", quantity: 10, unit_price: 25 }
])
