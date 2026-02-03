FactoryBot.define do
  factory :accountant, class: 'User' do
    company { association :kpmg }
    email { "accountant@kpmg.com" }
    password { 'password' }
  end

  factory :manager, class: 'User' do
    company { association :kpmg }
    email { "manager@kpmg.com" }
    password { 'password' }
  end

  factory :eavesdropper, class: 'User' do
    company { association :pwc }
    email { "eavesdropper@pwc.com" }
    password { 'password' }
  end
end
