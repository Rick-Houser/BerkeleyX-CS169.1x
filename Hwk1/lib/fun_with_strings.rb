module FunWithStrings
  def palindrome?
    self.gsub(/[\W\d]+/,'').downcase == self.gsub(/[\W\d]+/,'').reverse.downcase
  end

  def count_words
    hash = Hash.new(0)
    string = self.downcase.gsub(/[^0-9a-z ]/i, '').split

    string.each { |w| hash[w] += 1 }
    return hash
  end

  def anagram_groups
    self.split.group_by{|w| w.downcase.chars.sort}.values
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
