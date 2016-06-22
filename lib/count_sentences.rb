require 'pry'

class String

  def sentence?
     self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    phrases = self.split()
    count = 0 
    phrases.each do |phrase|
      if phrase.sentence? || phrase.question? || phrase.exclamation?
        count += 1
      else
        count = count
      end
    end
    count
  end
end