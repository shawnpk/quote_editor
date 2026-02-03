FactoryBot.define do
  factory :kpmg, class: 'Company' do
    name { "KPMG" }
  end

  factory :pwc, class: 'Company' do
    name { "PwC" }
  end
end
