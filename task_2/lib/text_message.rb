require 'twilio-ruby'

class Text_message

  def initialize
  end

  def confirm_order
      client = Twilio::REST::Client.new ENV['ACCOUNT_SID'], ENV['AUTH_TOKEN']
      client.account.sms.messages.create(
        :from => '+441823245040',
        :to => '+447931984419',
        :body => 'Thanks for your order! It will be delivered at ' + delivery_time )  
    end

  def delivery_time
    (Time.now + 3600).strftime("%I:%M%p")
  end

end