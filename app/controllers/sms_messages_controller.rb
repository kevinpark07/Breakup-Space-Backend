# Download the twilio-ruby library from twilio.com/docs/libraries/ruby
require 'twilio-ruby'
require './environment'

class SmsMessagesController < ApplicationController

    def create
        
        client = Twilio::REST::Client.new(ACCOUNT_SID, AUTH_TOKEN)

        to = sms_message_params['user_number'] # Your mobile phone number
        sms = sms_message_params['message']
        message = client.messages.create(
        from: TWILIO_NUMBER,
        to: to,
        body: sms
        )
    
        render json: message
    end

    private

    def sms_message_params
        params.require(:sms_message).permit(:user_number, :message)
    end

end
    
