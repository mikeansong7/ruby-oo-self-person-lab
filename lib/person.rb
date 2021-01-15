# # # your code goes here
# class Person

#     attr_reader :name 
#     attr_accessor :bank_account, :happiness, :hygiene

#     def initialize(name)
#         @name = name
#         @bank_account = 25
#         @happiness = 8
#         @hygiene = 8
#     end
# end 

#     def happiness
#     if @happiness > 10 
#         @happiness = 10
#     elsif @happiness < 0 
#         @happiness = 0
#     else
#         @happiness
#     end 
# end

#     def hygiene
#         if @hygiene > 10
#             @hygiene = 10
#         elsif @hygiene < 0
#             @hygiene = 0
#         else
#             @hygiene
#         end
#     end


#     def happy?
#         self.happiness > 7
#         end

#     def clean?
#         self.hygiene > 7
#         end

#     def get_paid (salary)
#         self.bank_account += salary
#         'all about the benjamins'
#         end

#     def take_bath
#         self.hygiene += 4
#         "♪ Rub-a-dub just relaxing in the tub ♫"
#         end

#     def work_out 
#         self.hygiene -= 3
#         self.happiness += 2
#         "♪ another one bites the dust ♫"
#         end

#     def call_friend (friend)
#         self.happiness += 3
#         self.friend += 3
#         "Hi #{friend.name}! It's #{self.name}. How are you?"
#         end

#     def start_conversation(person, topic)
#         if topic=="politics"
#             self.happiness-=2
#             person.happiness-=2
#             "blah blah partisan blah lobbyist" 
#             elsif topic=="weather"
#             self.happiness += 1
#             person.happiness += 1 
#             "blah blah sun blah rain" 
#             else
#             "blah blah blah blah blah"
#             end
#         end

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
        if happiness > 10
            @happiness = 10
        elsif happiness < 0
            @happiness = 0
        else
            @happiness = happiness
        end
    end

    def hygiene=(hygiene)
        if hygiene > 10
            @hygiene = 10 
        elsif hygiene < 0
            @hygiene = 0
        else
            @hygiene = hygiene
        end 
    end 

    def clean?
        if @hygiene > 7 
            true
        else 
            false
        end
    end 

    def happy?
        if @happiness > 7 
            true
        else 
            false
        end
    end 

    def get_paid(salary)
        @bank_account = @bank_account+salary
        "all about the benjamins"
    end 

    def take_bath
        self.hygiene = self.hygiene+4
        if self.hygiene > 10
            self.hygiene = 10
        end 
        "♪ Rub-a-dub just relaxing in the tub ♫"    
    end

    def work_out
        self.happiness = self.happiness+2
        self.hygiene = self.hygiene-3
        if self.hygiene < 0
            self.hygiene = 0
        end 
        if self.happiness > 10
            self.happiness = 10
        end
        "♪ another one bites the dust ♫"    
    end

    def call_friend(friend)
        self.happiness+=3
        friend.happiness+=3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end 

    def start_conversation(person, topic)
        if topic=="politics"
            self.happiness-=2
            person.happiness-=2
            blah = "blah blah partisan blah lobbyist" 
        elsif topic=="weather"
            self.happiness+=1
            person.happiness+=1
            blah = "blah blah sun blah rain" 
        else 
            blah = "blah blah blah blah blah"
        end
        blah
    end
end
