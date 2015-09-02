class Greeting
  def self.greet(name)
    name ||= "my friend"
    "Hello, #{name}."
  end
end
