class Sportsman
    def compete
        puts 'On a competition'
    end
end

class SoccerPlayer < Sportsman
    def run
        puts 'Running to the ball'
    end
end

class Marathonist < Sportsman
    def run
        puts "Running the circuit"
    end
end

soccerplayer = SoccerPlayer.new
marathonist = Marathonist.new

soccerplayer.compete
soccerplayer.run

marathonist.compete
marathonist.run