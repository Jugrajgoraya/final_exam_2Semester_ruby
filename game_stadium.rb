# Model a Statium that has Games. Both the Stadium and Game should be Ruby classes. Create a Stadium class and a Game class.

class Game

    attr_accessor :name
    attr_accessor :players
    attr_accessor :time
    def initialize ()
        @name 
        @players 
        @time 
    end
end
game_001 = Game.new
game_001.name = 'Table Tennis'
game_001.players = ["Nadal", "Federrer"]
game_001.time = 'Morining'

game_002 = Game.new
game_002.name = "Badminton"
game_002.players = ["Kevin Hart", "Dwayne Johnson"]
game_002.time = 'Midnight'

game_003 = Game.new
game_003.name = "Field Golf"
game_003.players = ["Daniel O'Brian", "Ian McKinnon"]
game_003.time = 'Afternoon'

class Stadium < Game

    def initialize ()
        @games =[]
        # super(@name)
    end

    def add_game(game)
        @games << game
    end

    def find_by_name(name)
        for g in @games
            # if g[@name] == name
                return g
            end
        end
    end

    def list
        value = [];
        for g in @games
            value << g 
        end
        return value
    end

end

rogers = Stadium.new
rogers.add_game(game_001)
rogers.add_game(game_002)
rogers.add_game(game_003)
p rogers.find_by_name("Badminton")


