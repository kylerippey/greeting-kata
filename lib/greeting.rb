class Greeting
  attr_reader :names

  def self.greet(names)
    new(names).greeting
  end

  def initialize(names)
    @names = Array(names)
    @names << "my friend" if @names.length == 0
  end

  def greeting
    shouting? ? greeting_string.upcase : greeting_string
  end

  private

  def greeting_string
    result = ['Hello']

    if names.length == 1
      result << names.first
    elsif names.length == 2
      result << names.join(' and ')
    else
      result += names[0...-1]
      result << "and #{names.last}"
    end

    [result.join(', '), final_punctuation].join('')
  end

  def final_punctuation
    shouting? ? '!' : '.'
  end
  
  def shouting?
    names.all? {|n| n == n.upcase}
  end
end
