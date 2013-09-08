# Presumption is I'm setting ex = Example.new

class Example < Object

  # This is a comment.

# this means you can read name, but not write it
# attr_reader :name

# this means you can write name but not read it
# attr_writer :name


  # this is the same as ex.honorific
  attr_accessor :honorific
  
  # this is the same as ex.name
  attr_accessor :name
  
  # this is the same as ex.date
  attr_accessor :date

# changes the default 'to_s' method to always spit out Example Class
  def to_s
    'Example Class'
  end


# take in name and date from somewhere, run it through initialize method, use it later
  def initialize(name,date)
# @ symbol denotes an "instnace variable" that can be used class-wide.  I think this can be accessed by calling ex.name
    @name = name
    
# Does this mean if Date is nil, use today, otherwise use what was input
    @date = date.nil? ? Date.today : date
  end

  def titled_name
# if @honorific exists, keep it.  Else set it to "Esteemed" else.  ||= is called "Equals Or"  Use it to check the existence of something
    @honorific ||= 'Esteemed'
# 'name' can only be used within this method
# can this be called by calling ex.titled_name
    name = "#{@honorific} #{@name}"
# Use Double Quotes when creating a string out of "interpolated" Ruby variables; single quotes returns literally everything between the single quotes
# same as name = @honorific + ' ' + @name ??

  end

# can this be called by calling ex.december_birthdays?  Would I see the populated born_in_december array?
  def december_birthdays
    born_in_december = [ ]
# each method goes through every name in the hash below... why is it able to run if the hash has not yet been defined?    
    famous_birthdays.each do |name, date|
      if date.month == 12
        born_in_december << name
      end
    end
    born_in_december
  end

  private

# can this be called by calling ex.famous_birthdays or is that prohibitied because of the "private" method
  def famous_birthdays
    birthdays = {
      'Ludwig van Beethoven' => Date.new(1770,12,16),
      'Dave Brubeck' => Date.new(1920,12,6),
      'Buddy Holly' => Date.new(1936,9,7),
      'Keith Richards' => Date.new(1943,12,18)
    }
  end

end