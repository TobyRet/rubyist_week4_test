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
    account_sid = 'AC53976239c0d66b3c6315d1c7b0ff1fd1'
    client = Twilio::REST::Client.new account_sid, ENV['AUTH_TOKEN']
    client.account.sms.messages.create(
      :from => '+441823245040',
      :to => '+447931984419',
      :body => 'Last week I clocked up 70 hours in study. Now I can make an app that sends texts. F.cool. I am exhausted but loving it :-)')  
  end

  def delivery_time
    (Time.now + 3600).strftime("%I:%M%p")
  end

end
  
