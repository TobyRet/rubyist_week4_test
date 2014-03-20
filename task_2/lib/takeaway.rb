class Takeaway

  attr_accessor :menu
    
  def initialize
    @menu = {'pizza' => 15, 'hamburger' => 6, 'steak' => 3, 'icecream' => 3}
  end

  def order_sum_check (order_items, total, sms)
    check_total = order_items.map { |k, v| @menu[k] * v }.inject { |sum, n| sum + n }
    check_total != total ? (raise 'Total wrong'; false) : (sms.confirm_order; true)
  end

end
  
