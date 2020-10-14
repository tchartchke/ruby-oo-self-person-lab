# your code goes here

class Person
  attr_reader :name, :happiness, :hygiene
  attr_accessor :bank_account
  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(happiness)
    case 
    when happiness < 0
      @happiness = 0
    when happiness > 10
      @happiness = 10
    else
      @happiness = happiness
    end
  end

  def hygiene=(hygiene)
    case 
    when hygiene < 0
      @hygiene = 0
    when hygiene > 10
      @hygiene = 10
    else
      @hygiene = hygiene
    end
  end

  def happy?
    @happiness > 7 ? true : false
  end

  def clean?
    @hygiene > 7 ? true : false
  end

  def get_paid(salary)
    @bank_account += salary
    "all about the benjamins"
  end

  def take_bath
    update_hygiene(4)
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    update_hygiene(-3)
    update_happiness(2)
    "♪ another one bites the dust ♫"
  end

  def call_friend(another_person)
    update_happiness(3)
    another_person.update_happiness(3)
    "Hi #{another_person.name}! It's #{@name}. How are you?"
  end

  def start_conversation(another_person, topic)
    case topic
    when 'politics'
      update_happiness(-2)
      another_person.update_happiness(-2)
      'blah blah partisan blah lobbyist'
    when 'weather'
      update_happiness(1)
      another_person.update_happiness(1)
      'blah blah sun blah rain'
    else
      'blah blah blah blah blah'
    end
  end

  def update_happiness(val)
    new_happiness = val + @happiness
    self.happiness = new_happiness
  end

  def update_hygiene(val)
    new_hygiene = val + @hygiene
    self.hygiene = new_hygiene
  end
end