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

  def initialize
    @queue = []
  end

  def enqueue(el)
    @queue.unshift(el)
  end

  def dequeue
    @queue.pop
  end

  def show
    @queue.dup
  end
end

class Map

  def initialize
    @map = []
  end

  def assign(key, value)

  end

  def lookup(key)

  end

  def remove(key)

  end

  def show

  end

  def assign

  end

end
