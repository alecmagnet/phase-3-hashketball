require "pry"

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

# Write code here
def num_points_scored(baller)
  points = 0
  game_hash[:home][:players].filter do |player| 
    if player[:player_name] == baller
      points = player[:points]
    end
  end
  game_hash[:away][:players].filter do |player| 
    if player[:player_name] == baller
      points = player[:points]
    end
  end
  points
end

def shoe_size(baller)
  shoe = 0
  game_hash[:home][:players].filter do |player| 
    if player[:player_name] == baller
      shoe = player[:shoe]
    end
  end
  game_hash[:away][:players].filter do |player| 
    if player[:player_name] == baller
      shoe = player[:shoe]
    end
  end
  shoe
end

def team_colors(team)
  color=[]
  if game_hash[:home][:team_name] == team
    color = game_hash[:home][:colors]
  else color = game_hash[:away][:colors]
  end
  color
end

def team_names  
  [game_hash[:home][:team_name], game_hash[:away][:team_name]]
end

def player_numbers(team)
  jerseys = []
  if game_hash[:home][:team_name] == team
    jerseys = game_hash[:home][:players].map do |player|
      player[:number]
    end
  else jerseys = game_hash[:away][:players].map do |player|
      player[:number]
  end
  end
  jerseys
end

def player_stats(baller)
  stats = {}
  game_hash[:home][:players].filter do |player|
    if player[:player_name] == baller
      stats = player
    end
  end
  game_hash[:away][:players].filter do |player|
    if player[:player_name] == baller
      stats = player
    end
  end
  stats
end

def big_shoe_rebounds
  shoe_array = []
  shoe_array_one = []
  shoe_array_two = []
  rebounds = 0
  shoe_array_one = game_hash[:home][:players].map do |player|
      player[:shoe]
    end
  shoe_array_two = game_hash[:away][:players].map do |player|
      player[:shoe]
    end
  shoe_array = shoe_array_one + shoe_array_two
  game_hash[:home][:players].find do |player|
    if player[:shoe] == shoe_array.sort[-1]
      rebounds = player[:rebounds]
    end
  end
  game_hash[:away][:players].find do |player|
    if player[:shoe] == shoe_array.sort[-1]
      rebounds = player[:rebounds]
    end
  end
  rebounds
end
