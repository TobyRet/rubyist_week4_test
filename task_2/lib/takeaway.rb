#require 'bundler/setup'
require 'twilio-ruby'

class Takeaway

  attr_accessor :menu
    
  def initialize
    @menu = {'pizza' => 15, 'hamburger' => 6, 'steak' => 3, 'icecream' => 3}
  end

  def order_sum_check (order_items, total)
    check_total = order_items.map { |k, v| @menu[k] * v }.inject { |sum, n| sum + n }
    check_total != total ? (raise 'Total wrong'; false) : (confirm_order; true)
  end

  def confirm_order
    client = Twilio::REST::Client.new ENV['ACCOUNT_SID'], ENV['AUTH_TOKEN']
    client.account.sms.messages.create(
      :from => '+441823245040',
      :to => '+447931984419',
      :body => 'Hey there, your order was placed and will be delivered before' + delivery_time)  
  end

  def delivery_time
    (Time.now + 3600).strftime("%I:%M%p")
  end

end
  
