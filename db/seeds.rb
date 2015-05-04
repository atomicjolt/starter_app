user = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << user.email

# Setup default accounts
if Rails.env.production?
  accounts = [{
    code: 'amasynsoftware',
    name: 'Amasyn Software',
    domain: 'http://www.amasynsoftware.com',
  }]
else
  accounts = [{
    code: 'amasynsoftware',
    name: 'Amasyn Software',
    domain: 'http://amasynsoftware.ngrok.com',
  }]
end

# Setup accounts
accounts.each do |account|
  if a = Account.find_by(code: account[:code])
    a.update_attributes!(account)
  else
    Account.create!(account)
  end
end