#Write your code here!
require 'pry'

def game_hash
hashketball = {
  :home => {
    :team_name => "Brooklyn Nets",
    :colors => ["Black", "White"],
    :players => [
      {
        :player_name => "Alan Anderson",
        :number => 0,
        :shoe => 16,
        :points => 22,
        :rebounds => 12,
        :assists => 12,
        :steals => 3,
        :blocks => 1,
        :slam_dunks => 1 
      },
      {
        :player_name => "Reggie Evans",
        :number => 30,
        :shoe => 14,
        :points => 12,
        :rebounds => 12,
        :assists => 12,
        :steals => 12,
        :blocks => 12,
        :slam_dunks => 7 
      },
      {
        :player_name => "Brook Lopez",
        :number => 11,
        :shoe => 17,
        :points => 17,
        :rebounds => 19,
        :assists => 10,
        :steals => 3,
        :blocks => 1,
        :slam_dunks => 15 
      },
      {
        :player_name => "Mason Plumlee",
        :number => 1,
        :shoe => 19,
        :points => 26,
        :rebounds => 11,
        :assists => 6,
        :steals => 3,
        :blocks => 8,
        :slam_dunks => 5 
      },
      {
        :player_name => "Jason Terry",
        :number => 31,
        :shoe => 15,
        :points => 19,
        :rebounds => 2,
        :assists => 2,
        :steals => 4,
        :blocks => 11,
        :slam_dunks => 1 
      }
      ]
  },
  :away => {
    :team_name => "Charlotte Hornets",
    :colors => ["Turquoise", "Purple"],
    :players => [
      {
        :player_name => "Jeff Adrien",
        :number => 4,
        :shoe => 18,
        :points => 10,
        :rebounds => 1,
        :assists => 1,
        :steals => 2,
        :blocks => 7,
        :slam_dunks => 2 
      },
      {
        :player_name => "Bismack Biyombo",
        :number => 0,
        :shoe => 16,
        :points => 12,
        :rebounds => 4,
        :assists => 7,
        :steals => 22,
        :blocks => 15,
        :slam_dunks => 10 
      },
      {
        :player_name => "DeSagna Diop",
        :number => 2,
        :shoe => 14,
        :points => 24,
        :rebounds => 12,
        :assists => 12,
        :steals => 4,
        :blocks => 5,
        :slam_dunks => 5 
      },
      {
        :player_name => "Ben Gordon",
        :number => 8,
        :shoe => 15,
        :points => 33,
        :rebounds => 3,
        :assists => 2,
        :steals => 1,
        :blocks => 1,
        :slam_dunks => 0 
      },
      {
        :player_name => "Kemba Walker",
        :number => 33,
        :shoe => 15,
        :points => 6,
        :rebounds => 12,
        :assists => 12,
        :steals => 7,
        :blocks => 5,
        :slam_dunks => 12 
      }
      ]
  }
}
end

def num_points_scored(player)
  game_hash.each do |location, team|
    team.each do |attribute, data|
      if attribute == :players
        data.each do |p_name|
          if p_name[:player_name] == player
            return p_name[:points]
      #return number of points player scored
          end
        end
      end
    end
  end
end

def shoe_size(player)
  game_hash.each do |location, team|
    team.each do |attribute, data|
      if attribute == :players
        data.each do |p_name|
          if p_name[:player_name] == player
            return p_name[:shoe]
          end
        end
      end
    end
  end
end

def team_colors(team)
  game_hash.each do |location, teams|
      if teams[:team_name] == team
        return teams[:colors]
    end
  end
end

def team_names
  team_array = []
  game_hash.map do |location, teams|
    team_array.push(teams[:team_name])
  end
  team_array
end

def player_numbers(team)
  #returns an array with all the numbers of the players on the team that is passed in as an argument
  nums_array = []
  game_hash.each do |location, teams|
      teams.each do |attribute, data|
        if teams[:team_name] == team
         if attribute == :players
          data.each do |p_numbers|
           nums_array << p_numbers[:number]
          end
        end
      end
    end
  end
  nums_array
end

def player_stats(player)
  stats_hash = {}
  game_hash.each do |location, teams|
    teams.each do |attribute, data|
      if attribute == :players
        data.each do |p_name|
          if p_name[:player_name] == player 
            stats_hash = p_name.delete_if do |key, value|
              key == :player_name
            end
         end
       end
     end
   end
 end
 stats_hash
end

=begin
def big_shoe_rebounds
  shoe_rebounds = 0 
  game_hash.each do |location, team|
    team.each do |attribute, data|
      if attribute == :players
        data.each do |p_name|
          if p_name[:shoe].each.max
            
          
          end
        end
      end
    end
  end
end


def big_shoe_rebounds
  game_hash.each do |location, team|
    team.each do |attribute, data|
      if attribute == :players
        data.each do |player|
          player.each do |key, value|
            if key == :shoe
             # value.max
       binding.pry
            end
          end
        end
      end
    end
  end
end
=end

def big_shoe_rebounds
  game_hash.each do |locatione, team|
    team[]
end




