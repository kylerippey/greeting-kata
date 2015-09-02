class Greeting
  def self.greet(name)
    name ||= "my friend"

    name == name.upcase ? "HELLO, #{name}!" : "Hello, #{name}."
  end
end
