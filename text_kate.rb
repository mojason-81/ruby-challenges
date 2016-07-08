require 'rubygems'
require 'twilio-ruby'

account_sid = 'ACb062435971dbed6a9b64b67dfd309199'
auth_token = '60bfe65e2dbbd5100aaf372d2586d3e8'

@client = Twilio::REST::Client.new(account_sid, auth_token)

message = @client.account.messages.create(
	:from => '8168443341',
	:to => '1234567890',
	:body => "you need a shower"
)

puts message.to
