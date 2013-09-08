class Owner

  def name
    name = 'Foobar Kadigan'
  end

  def birthdate
    birthdate = Date.new(1990, 12, 22)
  end

  def countdown
# today = Date.today
# birthday = Date.new(today.year, birthdate.month, birthdate.day)
    birthday = Date.new(Date.today.year, birthdate.month, birthdate.day)
# This can be done without a 'today' variable - just Date.today
    if birthday > Date.today
      countdown = (birthday - Date.today).to_i
    else
      countdown = (birthday.next_year - Date.today).to_i
    end
  end

end