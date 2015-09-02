class Greeting
  def self.greet(names)
    names ||= "my friend"
    names = Array(names)

    if names.length >= 3
      last_name = names.pop
      names.all? { |n| n == n.upcase } ? "HELLO, #{names.join(', ')}, and #{last_name}!" : "Hello, #{names.join(', ')}, and #{last_name}."
    else
      names.all? { |n| n == n.upcase } ? "HELLO, #{names.join(' and ')}!" : "Hello, #{names.join(' and ')}."
    end
  end
end
