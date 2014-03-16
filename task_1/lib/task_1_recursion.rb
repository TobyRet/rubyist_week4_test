class Array

  def my_inject_recursion(memory = 0)
    memory += self[-1]
    self.pop
    self.length > 0 ? self.my_inject_recursion(memory) : memory
  end

end