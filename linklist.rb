require_relative 'nodes'

class LinkList
  attr_accessor :node, :head

  def initialize(data)
    @head = Node.new(data)
  end

  def head_data
    @head.data
  end

  def find_tail
    current = @head
    until current.next_node.nil?
      current = current.next_node
    end
    current
  end

  def tail_data
    find_tail.data
  end

  def append(data)
    new_node = Node.new(data)
    find_tail.next_node = new_node
  end

  def prepend_node(data)
    current = @head
    new_node = Node.new(data)
    @head = new_node
    @head.next_node = current
  end

  def pop
    current = @head
    while current.next_node.next_node
      current = current.next_node
    end
    popped = current.next_node
    current.next_node = nil
    popped.data
  end

  def pop_num_times(times)
    popped_values = ""
    times.times do
    popped_values <<  pop + " "
    end
    popped_values.split(" ")
  end

  def count_nodes
    count = 1
    current = @head
    until current.next_node == nil
      current = current.next_node
      count +=1
    end
    count
  end

  def include?(value)
    current = @head
    until current.data == value || current.next_node == nil
      current = current.next_node
    end
    current.data == value
  end

  def find_by_pos(pos)
    current = @head
    pos.times do
    current = current.next_node
  end
    current.data
  end

  def all_nodes
    values = []
    current = @head
    while current != nil
      values << current.data
      current = current.next_node
    end
    values
  end

  def play_node_values
     `say -r 300 -v Boing "#{all_nodes}"`
  end

  def

  def insert_in_position(pos)
    current = @head

    opped_values = []
    times.times do
    popped_values <<  pop
    end
    popped_values.reverse
  end


end

# list = LinkList.new("bop")
# list.append("zing")
# list
# list.append("boom")
# list
# list.prepend_node("hop")
# list.find_by_pos(2)
