FactoryGirl.define do

  factory :authentication do
    user
    provider { FactoryGirl.generate(:name) }

    factory :authentication_facebook do
      provider 'facebook'
      uid '12345'
      username 'myusername'
      provider_avatar 'http://graph.facebook.com/12345/picture?type=large'
    end

  end

end
