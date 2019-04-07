require 'pry'
class Person
  attr_reader :name, :happiness, :hygiene
  attr_accessor :bank_account

  def initialize(name)

    @name = name
    @bank_account = 25
    @hygiene = 8
    @happiness = 8

    end

    def happiness=(num)
      @happiness = num
      @happiness = 10 if @happiness > 10
      @happiness = 0 if @happiness < 0
    end

      #binding.pry
      def hygiene=(num)
        @hygiene = num
        @hygiene = 10 if @hygiene > 10
        @hygiene = 0 if @hygiene < 0
      end

      def clean?
        hygiene > 7
      end

      def happy?
        happiness > 7
      end

      def take_bath
        self.hygiene += 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
      end

      def work_out
        self.happiness += 2
        self.hygiene -= 3
        return "♪ another one bites the dust ♫"
      end

      def call_friend(friend)

        self.happiness += 3
        friend.happiness += 3
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
      end

      def get_paid(salary)
        self.bank_account += salary
        self.happiness += 1
        return "all about the benjamins"
      end

      def start_conversation(person, topic)
        talkers = [self, person]
        if topic == 'politics'
          talkers.each {|talker| talker.happiness -= 2}
          talker_one, talker_two = ['partisan','lobbyist']
          return "blah blah #{talker_one} blah #{talker_two}"
      elsif topic == 'weather'
        talkers.each {|i| i.happiness += 1}
        talker_one, talker_two = ['sun','rain']
        return "blah blah #{talker_one} blah #{talker_two}"
      end
      return "blah blah blah blah blah"
      end
end



  # def happy?(points)
  # end
