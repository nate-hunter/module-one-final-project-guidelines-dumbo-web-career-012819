require_relative '../config/environment'
require_relative '../db/seeds'
require 'pry'

# # 1st Opponent:
# geoff = Opponent.create(name: "geoff", element: "Fire", special_move: 0)
# # 2nd Opponent(s):
# dimartino = Opponent.create(name: "DiMartino", element: "Fire", special_move: 1)
# konietzko = Opponent.create(name: "Konietzko", element: "Fire", special_move: 1)
# # 3rd Opponent:
# yon_rha = Opponent.create(name: "Captain Yon Rha", element: "Fire", special_move: 1)
# # Final Opponent:
# shinu = Opponent.create(name: "General Shinu", element: "Fire", special_move: 1)

banner
welcome
greeting
run_method

#run_app
