class Takeaway

  attr_reader :menu
    
  def initialize
    @menu = {'pizza' => 15, 'hamburger' => 6, 'steak' => 3, 'icecream' => 3}
  end

  def total_order(list, total)
    calculate_total = list.map { |k, v| @menu[k] * v }.inject { |sum, n| sum + n }
    calculate_total == total
  end
    
  def send_text
    true
  end

end
  
