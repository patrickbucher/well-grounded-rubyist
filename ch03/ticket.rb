require 'time'

class Ticket
  def initialize(venue)
    @venue = venue
  end
  def venue
    return @venue
  end
  def venue=(venue)
    @venue = venue
  end
  def date
    return @date
  end
  def date=(date)
    begin
      if date.length != 10
        raise Exception("malformed date")
      end
      d = Time.strptime(date, "%Y-%m-%d")
      @date = date
    rescue
      puts "Please submit the date in the format 'yyyy-mm-dd'."
    end
  end
  def price
    return @price
  end
  def price=(price)
    @price = price
  end
  def discount(percent)
    if percent >= 0 and percent <= 100
      @price = (100.0 - percent) / 100.0 * @price
    end
    "$#{"%.2f" % price}"
  end
end

th = Ticket.new("Hallenstadion")
th.price = 140
th.date = "2022-06-29"
th.date = "22-06-29"
puts "The event takes place on #{th.date}."
puts "The ticket for #{th.venue} has been discounted 15% to #{th.discount(15)}."
