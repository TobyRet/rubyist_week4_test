class Array
 
  def my_inject
    memory = 0
    self.each do |s|
      memory = yield(memory,s)
    end
    memory
  end

end

