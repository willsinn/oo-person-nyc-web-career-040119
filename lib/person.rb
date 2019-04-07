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
        self.hygeine += 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
      end

      def work_out
        self.happiness += 2
        self.hygeine -= 3
        return "♪ another one bites the dust ♫"
      end

      def call_friend(friend)

        self.happiness += 3
        friend.happiness += 3
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
      end
end



  # def happy?(points)
  # end
