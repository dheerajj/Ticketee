Factory.define :user do |user|
  user.sequence(:email) { |n| "user#{n}@mobiporter.com" }
  user.password "password"
  user.password_confirmation "password"
end
