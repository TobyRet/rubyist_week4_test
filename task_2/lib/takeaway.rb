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
    #account_sid = 'ACdc37c6022146a7917a7fe9a1f8364e39'
    #auth_token = 'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy'
    #client = Twilio::REST::Client.new account_sid, auth_token
    #client.account.sms.messages.create(
    #  :from => '+14159341234',
    #  :to => '+447931984419',
    #  :body => 'Hey there, your order was placed and be deliver #before' + delivery_time)
    true
    
  end

  def delivery_time
    (Time.now + 3600).strftime("%I:%M%p")
  end

end
  
