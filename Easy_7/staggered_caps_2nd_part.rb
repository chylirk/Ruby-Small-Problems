require 'pry'

def staggered_case(string)
  need_upper = true

  result_string = ''

  string.chars.map do |char|
    if (char =~ /[A-Za-z]/) && need_upper
      need_upper = !need_upper
      result_string << char.upcase
    elsif (char =~ /[A-Za-z]/) && !need_upper
      need_upper = !need_upper
      result_string << char.downcase
    else
      result_string << char
    end
    #binding.pry
  end
  result_string
end

puts staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
puts staggered_case('ALL CAPS') == 'AlL cApS'
puts staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
