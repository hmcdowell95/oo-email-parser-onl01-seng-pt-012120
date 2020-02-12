# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser
  attr_accessor :email
  
  LIST = []
  def initialize(email)
    @email = email
    a = email.split(" ")
    a.each do |x|
      b = x.chars
      b.delete(",")
      c = b.join
      LIST << c
    end
  end
  
  def parse
    a = LIST.uniq
    a
  end
end