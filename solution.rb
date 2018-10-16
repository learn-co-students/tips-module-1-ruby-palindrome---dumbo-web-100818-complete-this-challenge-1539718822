require 'pry'


def palindrome?(string) #mine
  string.reverse == string ? true : false
end

def palindrome?(string) #greg
  string.reverse == string
  # == is an evaluated to a truthy or falsey anyway
end

def r_palindrome?(string) #olivia
  if string.length > 2
    if string[0] == string[-1]
      string = string.delete(string[0])
      string = string.delete(string[1])
      r_palindrome?(string)
    else
      false
    end
  elsif string[0] == string[1]
  else
    false
  end
  end
end

def r_palindrome?(string) #greg
  if string.length > 2
    if string[0] == string[-1]
      r_palindrome?(string[1..-2])
    else
      false
    end
  elsif string[0] == string[1]
    true
  else
    false
  end
  end
end

palindrome?("noon") #true
palindrome?("five") #false
palindrome?("radar") #true
palindrome?("learnlovecode") #false
