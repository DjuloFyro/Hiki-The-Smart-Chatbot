
require 'facebook/messenger'
include Facebook::Messenger


Facebook::Messenger::Bot.on :message do |message|
  message.reply(text: 'Hello, human!')
end