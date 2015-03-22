require 'rubygems'
require 'twilio-ruby'

answers = ['It is certain', 'It is decidedly so', 'Without a doubt', 'Yes definitely', 'You may rely on it', 'As I see it, yes', 'Most likely', 'Outlook good', 'Yes', 'Signs point to yes', 'Reply hazy try again', 'Ask again later', 'Better not tell you now', 'Cannot predict now', 'Concentrate and ask again', "Don't count on it", 'My reply is no', 'My sources say no', 'Outlook not so good', 'Very doubtful']

puts "Ask the 8-ball a question"
question = gets.chomp
answer = answers[rand(answers.length - 1)]

account_sid = 'ACb062435971dbed6a9b64b67dfd309199'
auth_token = '60bfe65e2dbbd5100aaf372d2586d3e8'

@client = Twilio::REST::Client.new(account_sid, auth_token)

message = @client.account.messages.create(
	:from => '8168443341',
	:to => '8166049261',
	:body => answer
)

puts message.to
