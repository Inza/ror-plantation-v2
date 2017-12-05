#require 'ffaker'

FactoryBot.define do
  factory :example do
    title FFaker::Name.name
    text "MyText"
    published false
    subject nil
  end
end
