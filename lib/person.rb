# your code goes here
class Person
    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene

     def initialize provided_name
        @name = provided_name
        self.bank_account = 25
        @happiness = 8
        @hygiene = 8
     end

     def happiness
        @happiness
     end

     def happiness=(provided_happiness)
        if provided_happiness <= 10 && provided_happiness >= 0
            @happiness = provided_happiness
        elsif provided_happiness > 10
             @happiness = 10
        else @happiness = 0
        end
     end   

     def hygiene
        @hygiene
     end

     def hygiene=(provided_hygiene)
        if provided_hygiene <= 10 && provided_hygiene >= 0
            @hygiene = provided_hygiene
        elsif provided_hygiene > 10
             @hygiene = 10
        else @hygiene = 0
        end
     end

     def happy?
        @happiness > 7 ? true : false
     end

     def clean?
        @hygiene > 7 ? true : false
     end

     def get_paid(provided_money)
        self.bank_account += provided_money
        "all about the benjamins"
     end

     def take_bath
        current_hygiene_points = @hygiene += 4
        self.hygiene=(current_hygiene_points)

        "♪ Rub-a-dub just relaxing in the tub ♫"
     end

     def work_out
        work_out_hygiene = @hygiene -= 3
        self.hygiene=(work_out_hygiene)
       
        work_out_happiness = @happiness += 2
        self.happiness=(work_out_happiness)

        "♪ another one bites the dust ♫"
     end

     def call_friend(another_person)
        call_friend_happiness = @happiness += 3
        self.happiness=(call_friend_happiness)

        another_person_happiness = another_person.happiness + 3
        another_person.happiness=(another_person_happiness)

        "Hi #{another_person.name}! It's #{self.name}. How are you?"
     end

     def start_conversation(friend, topic)
        case topic
        when "politics"
            talk_politics_happiness_self = @happiness - 2
            self.happiness=(talk_politics_happiness_self)

            talk_politics_happiness_friend = friend.happiness - 2
            friend.happiness=(talk_politics_happiness_friend)
            "blah blah partisan blah lobbyist"
        when "weather"
            talk_weather_happiness_self = @happiness + 1
            self.happiness=(talk_weather_happiness_self)

            talk_weather_happiness_friend = friend.happiness + 1
            friend.happiness=(talk_weather_happiness_friend)
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
     end

end