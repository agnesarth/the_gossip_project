require 'bundler'
Bundler.require

array_test = [["nom", "gossip"],["Hercule", "Je suis trop fort"], ["Achille", "J'ai mal au talon"]]

CSV.open("../db/gossip.csv", "w") do |csv|
  csv << [array_test]
end