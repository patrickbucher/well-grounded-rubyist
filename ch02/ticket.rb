ticket = Object.new

def ticket.date
  "1903-01-02"
end
def ticket.venue
  "Town Hall"
end
def ticket.event
  "Author's reading"
end
def ticket.performer
  "Mark Twain"
end
def ticket.seat
  "Second Balcony, row J, seat 12"
end
def ticket.price
  5.50
end
def ticket.print_details(*x)
  x.each { |detail| puts "This ticket is #{detail}." }
end
def ticket.output
  puts "This ticket is for: #{event}, at #{venue}, on #{date}."
  puts "The performer is #{performer}."
  puts "The seat is #{seat}, and it costs $#{price}."
  print_details("non-refundable", "non-transferable", "in a non-smoking section")
end

ticket.output
