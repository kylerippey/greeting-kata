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
end
