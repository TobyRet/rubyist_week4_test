class Takeaway

  attr_reader :menu
    
  def initialize
    @menu = {'pizza' => 15, 'hamburger' => 6, 'steak' => 3, 'icecream' => 3}
  end

  #def total_order(items)
  # price = []
  # items.each { |item| price << @menu[item] }
  # price.inject { |sum, n| sum + n }
  #end

  def total_order(list, total)
    sub_total = list.map { |k, v| @menu[k] * v }
    total == sub_total.inject { |sum, n| sum + n }
  end
    
end
  
