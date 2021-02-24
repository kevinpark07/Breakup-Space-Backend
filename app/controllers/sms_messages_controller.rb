# Download the twilio-ruby library from twilio.com/docs/libraries/ruby
require 'twilio-ruby'
require './environment'

#create SmsMessage migration table, controller, model
#attributes user_number, message
#post request is all we need
#hide account_sid and auth_token and twilio number in ENV file refer to The Thread

class SmsMessagesController < ApplicationController

    def create
        
        client = Twilio::REST::Client.new(ACCOUNT_SID, AUTH_TOKEN)

        to = sms_message_params['user_number'] # Your mobile phone number
        message = sms_message_params['message']
        client.messages.create(
        from: TWILIO_NUMBER,
        to: to,
        body: message
        )

        render json: 'success'
    end

    private

    def sms_message_params
        params.require(:sms_message).permit(:user_number, :message)
    end

end
    
