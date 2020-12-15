require "pry"
# your code goes here
class Person
  attr_accessor :bank_account
  attr_reader :name, :happiness, :hygiene

  def happiness=(num)
    if num >= 10
      @happiness = 10
    elsif num <= 0
      @happiness = 0
    else
      @happiness = num
    end
  end

  def hygiene=(num)
    if num >= 10
      @hygiene = 10
    elsif num <= 0
      @hygiene = 0
    else
      @hygiene = num
    end
  end

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def clean?
    @hygiene > 7 ? true : false
  end

  def happy?
    @happiness > 7 ? true : false
  end

  def get_paid(salary)
    @bank_account += salary
    return "all about the benjamins"
  end

  def take_bath
    self.hygiene += 4
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.happiness += 2
    self.hygiene-= 3
    return "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3
    return "Hi #{friend.name}! It's #{@name}. How are you?"
  end

  def start_conversation(friend, topic)
    case topic
    when "politics"
      self.happiness -= 2
      friend.happiness -= 2
      return 'blah blah partisan blah lobbyist'
    when "weather"
      #some stuff
      self.happiness += 1
      friend.happiness += 1
      return 'blah blah sun blah rain'
    else
      return 'blah blah blah blah blah'
    end
  end
end

# roy = Person.new("Roy")
# binding.pry