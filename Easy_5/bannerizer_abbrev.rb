def bookend(length)
  '+' + '-' * length + '+'
end

def emptyline(length)
  '|' + ' ' * length + '|'
end

def midline(string, length)
  '|' + string.center(length + 2) + '|'
end

def wrap(string, length)
  string.chars.each_slice(length).map(&:join)
end

def choose_length(string, wrap_length)
  string.size > wrap_length ? wrap_length : string.size
end

def box_wrap(string, wrap_length)
  standard = choose_length(string, wrap_length)

  puts bookend(standard + 2)
  puts emptyline(standard + 2)

  wrap(string, standard).each do |line|
    puts midline(line, standard)
  end

  puts emptyline(standard + 2)
  puts bookend(standard + 2)
end
