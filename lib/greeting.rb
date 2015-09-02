class Greeting
  def self.greet(names)
    names ||= "my friend"
    names = Array(names)

    if names.length >= 3
      last_name = names.pop
      comma_seperated_names = names.join(', ')
      greeting = "Hello, #{comma_seperated_names}, and #{last_name}."
      names.all? { |n| n == n.upcase } ? greeting.upcase : greeting
    else
      names.all? { |n| n == n.upcase } ? "HELLO, #{names.join(' and ')}!" : "Hello, #{names.join(' and ')}."
    end
  end
end
