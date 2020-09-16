require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      true
    else
      false
    end
  end

  def question?
    if self.end_with?('?')
      true
    else
      false
    end
  end

  def exclamation?
    if self.end_with?('!')
      true
    else
      false
    end
  end

  def count_sentences
    # find those pesky punctuations, convert them to periods,
    # split the sentences on the last period and space
    # and count the elements in the array.
    self.gsub(/\?|\!/,".").split(". ").count
  end
end