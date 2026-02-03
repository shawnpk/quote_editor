User.destroy_all
Quote.destroy_all
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
