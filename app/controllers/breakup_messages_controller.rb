class BreakupMessagesController < ApplicationController
    def index
        messages = BreakupMessage.all
        render json: messages
    end

    def show
        message = BreakupMessage.find(params[:id])
        render json: message
    end
end
