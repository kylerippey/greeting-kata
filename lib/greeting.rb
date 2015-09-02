class Greeting
  def self.greet(name)
    name ||= "my friend"

    name = Array(name).join(' and ')

    name == name.upcase ? "HELLO, #{name}!" : "Hello, #{name}."
  end
end
