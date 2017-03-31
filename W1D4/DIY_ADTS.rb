class Stack
  def initialize
    @stack = []
  end

  def add(el)
    @stack << el
    el
  end

  def remove
    @stack.pop
  end

  def show
    @stack.dup
  end
end

class Queue
  def enqueue(el)

  end

  def dequeue

  end

  def show

  end
end
