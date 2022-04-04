
require 'facebook/messenger'
include Facebook::Messenger

SUBSCRIBED_PARAMS = [ 'messages', 'message_echoes', 'message_deliveries', 'messaging_optins', 'leadgen' ]
Facebook::Messenger::Subscriptions.subscribe(access_token: @page_token, subscribed_fields: SUBSCRIBED_PARAMS, page_id: @page_id)

Facebook::Messenger::Bot.on :message do |message|
  message.reply(text: 'Hello, human!')
end