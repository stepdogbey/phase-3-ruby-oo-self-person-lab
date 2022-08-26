# your code goes here
class Person
  attr_reader  :name
  attr_accessor :bank_account, :happiness, :hygiene

  def initialize(name, happiness = 8, hygiene = 8)
    @name = name
    @bank_account = 25
    @happiness = happiness
    @hygiene = hygiene
  end

  def happiness=(value)
#     if value > 10
#       @happiness = 10
#     elsif value < 0
#       @happiness = 0
#     else
#       @happiness = value
#     end
    case 
    when value > 10
        @happiness = 10
    when value < 0
        @happiness = 0
    else
        @happiness = value
    end
    @happiness
  end

  def hygiene=(value)
    # if value > 10
    #   @hygiene = 10
    # elsif value < 0
    #   @hygiene = 0
    # else
    #   @hygiene = value
    # end
    case 
    when value > 10
        @hygiene = 10
    when value < 0
        @hygiene = 0
    else
        @hygiene = value
    end
    @hygiene
  end
         
  def clean?
    @hygiene > 7 ? true : false
    # if @hygiene > 7
    #   return true
    # else
    #   return false
    # end
  end

  def happy?
    @happiness > 7 ? true : false
    # if @happiness > 7
    #   return true
    # else
    #   return false
    # end
  end

  def get_paid(salary)
    @bank_account += salary
    "all about the benjamins"
  end

  def take_bath
    hygiene_value = @hygiene += 4
    self.hygiene = hygiene_value
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    hygiene_value = @hygiene -= 3
    self.hygiene = hygiene_value
    happiness_value = @happiness += 2
    self.happiness= happiness_value
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person, topic)
    if topic == "politics"
      self.happiness -= 2
      person.happiness -= 2
      return "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      self.happiness += 1
      person.happiness += 1
      return "blah blah sun blah rain"
    else
      return "blah blah blah blah blah"
    end
  end

end
