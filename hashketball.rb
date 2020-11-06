require 'pry'
require './hashketball.rb'
# Write your code below game_hash
def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end


def num_points_scored(player_name)
  game_hash.each do |key, value|
    value.each do |k, v|
      if k == :players
        v.each do |name|
          if name[:player_name] == player_name
            return name[:points]
          end
        end 
      end 
    end 
  end 
end

def shoe_size(player_name)
  game_hash.each do |key, value|
    value.each do |k, v|
      if k == :players
        v.each do |shoe|
          if shoe[:player_name] == player_name
            return shoe[:shoe]
          end
        end 
      end 
    end 
  end 
end

def team_colors(team_name)
  game_hash.each do |key, value|
    value.each do |k, v|
      if v == team_name
          return game_hash[key][:colors]
      end
    end 
  end 
end

def team_names
  new_array = []
  game_hash.each do |key, value|
     
    value.each do |k, v|
      #binding.pry
      if k == :team_name
          new_array << v
          #binding.pry
      end
    end 
  end
    return new_array
  end 

  
  
  def player_numbers(team_name)
    new_array = []
    game_hash.each do |key, value|
      value.each do |k, v|
        # binding.pry
        if v == team_name
              game_hash[key][:players].each do |number|
                # binding.pry
                if number[:number] == number[:number]
                  new_array << number[:number]
                end
                 #binding.pry
              end
            return new_array
        end
      end
   end
  end
  
  def player_stats(player_name)
    # new_hash = {}
    game_hash.each do |key, value|
      value.each do |k, v|
        game_hash[key][:players].each do |name|
                   #binding.pry
                if name[:player_name] == player_name
                  # new_hash = name
                  return name
                end
                 #binding.pry
        end
        # binding.pry
        # return name
      end
    end
  end
  
def big_shoe_rebounds
  largest_size = 0
  largest_size_name = ""
  game_hash.each do |key, value|
      game_hash[key][:players].each do |player|
                  # binding.pry
           if player[:shoe] > largest_size
              largest_size = player[:shoe]
              largest_size_name = player[:player_name]
           end
            # binding.pry
            
        end
        # return the player with the largest shoe size
        game_hash[key][:players].each do |player_name|
          # binding.pry
          if player_name[:player_name] == largest_size_name
            return player_name[:rebounds]
          end
      end
  end
end