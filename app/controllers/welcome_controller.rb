class WelcomeController < ApplicationController
  def index
  end

  def send_text_message
		number_to_send_to = params[:number_to_send_to]

		twilio_sid = "ACa0a6026cca33f8cf1e3ece2a8c6e90ae"
		twilio_token = "561b5b4952141fc2fcf7c4d078e88d06"
		twilio_phone_number = "2403033321 " 

		@twilio_client = Twilio::REST::Client.new twilio_sid, twilio_token

		@twilio_client.account.sms.messages.create(
			:from => "+1#{2403033321}",
			:to => 7033430785,
			:body => "This is a friendly reminder that your Quota is now lower than 25%."
			)
	end
	helper_method :send_text_message
end
