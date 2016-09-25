require 'pry'

class RegularAdder
  def initialize(input)
    @input = input
    @regexes = File.readlines('./regexes')
  end

  attr_reader :input, :regexes

  def parse
    result = input
    loop do
      result = regexes.inject(result) do |result, regex|
        `echo #{result} | perl -pe 's#{regex.strip}'`.strip
      end
      break if result =~ /^[0-9]+$/
    end
    result
  end
end
