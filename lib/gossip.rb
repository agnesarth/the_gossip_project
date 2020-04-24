require 'bundler'
Bundler.require

require_relative 'controller'

class Gossip
  attr_reader :content, :author

  def initialize(content, author)
    @content = content
    @author = author
  end

  def save
    CSV.open("db/gossip.csv", 'a') do |csv|
      csv << [@content, @author]
    end
  end



end