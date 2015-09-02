require 'test_helper'
class GreetingTest < Minitest::Test
  def test_should_interpolate
    assert_equal "Hello, Kyle.", Greeting.greet("Kyle")
  end

  def test_should_handle_nil
    assert_equal "Hello, my friend.", Greeting.greet(nil)
  end

  def test_should_handle_shouting
    assert_equal "HELLO, JERRY!", Greeting.greet("JERRY")
  end

  def test_should_handle_multiple_names
    assert_equal "Hello, Jill and Jane.", Greeting.greet(["Jill", "Jane"])
  end

  def test_should_handle_three_plus_names
    assert_equal "Hello, Jill, Jane, and Joe.", Greeting.greet(["Jill", "Jane", "Joe"])
  end
end
