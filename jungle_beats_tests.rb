require 'minitest/autorun'
require_relative 'linklist'
require_relative 'nodes'


class JungleBeatsTest < Minitest::Test

  def test_node_accepts_data
    node = Node.new("boop")
    assert_equal "boop", node.data
  end

  def test_node_accepts_two_arguments
    node = Node.new("boop", "string")
    assert_equal "boop", node.data
    assert_equal "string", node.next_node
  end

  def test_it_creates_new_node_on_init
    node = LinkList.new("boop")
    assert_equal "boop", node.head.data
  end

  def test_head_data_is_returned
    list = LinkList.new("beep")
    assert_equal "beep", list.head_data
  end

  def test_tail_data_is_returned
    list = LinkList.new("beep")
    assert_equal "beep", list.tail_data
  end

  def test_tail_points_to_nil
    list = LinkList.new("bop")
    assert_equal nil, list.find_tail.next_node
  end

  def test_it_appends_new_node
    list = LinkList.new("beep")
    list.append("beep")
    list.append("pop")
    assert_equal "pop", list.tail_data
  end

  def test_it_prepends_node
    list = LinkList.new("boom")
    list.prepend_node("boom")
    list.prepend_node("zip")
    assert_equal "zip", list.head_data
  end

  def test_it_pops_last_node
    list = LinkList.new("boom")
    list.append("pop")
    list.append("zip")
    assert_equal "zip", list.pop
  end

  def test_it_pops_given_num_of_node
    list = LinkList.new("boom")
    list.append("pop")
    list.append("zip")
    list.append("bing")
    list.append("ding")
    assert_equal ["ding", "bing"], list.pop_num_times(2)
  end

  def test_it_counts_nodes
    list = LinkList.new("boom")
    list.append("pop")
    list.append("zip")
    list.append("bing")
    list.prepend_node("bop")
    assert_equal 5, list.count_nodes
  end

  def test_list_contains_specified_value
    list = LinkList.new("boom")
    list.append("pop")
    list.append("zip")
    list.append("bing")
    list.prepend_node("bop")
    assert_equal true, list.include?("pop")
  end

  def test_list_does_not_contains_specified_value
    list = LinkList.new("boom")
    list.append("pop")
    list.append("zip")
    list.append("bing")
    list.prepend_node("bop")
    assert_equal false, list.include?("zoom")
  end

  def test_list_does_contain_specified_value
    list = LinkList.new("boom")
    list.append("pop")
    list.append("zip")
    list.append("bing")
    list.prepend_node("bop")
    assert_equal true, list.include?("pop")
  end

  def test_it_can_find_value_based_on_pos
    list = LinkList.new("boom")
    list.append("pop")
    list.append("zip")
    list.append("bing")
    list.append("bop")
    assert_equal "bing", list.find_by_pos(3)
  end

  def test_it_returns_value_all_nodes
    list = LinkList.new("boom")
    list.append("pop")
    list.append("zip")
    list.append("bing")
    assert_equal ["boom", "pop", "zip", "bing"], list.all_nodes
  end

  def test_it_plays_all_nodes_in_ruby
    list = LinkList.new("boom")
    list.append("pop")
    list.append("zip")
    list.append("bing")
    assert list.play_node_values
  end

end
