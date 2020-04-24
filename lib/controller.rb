require 'bundler'
Bundler.require

require_relative 'gossip'
require_relative 'view'

class Controller

  def initialize
    #gossip = Gossip.new(@author, @content)
    #gossip.save
    @view = View.new
  end

  def create_gossip
    params = @view.create_gossip
    puts params
    gossip = Gossip.new(params[:content], params[:author])
    puts gossip.content
    # params.key.first, params.value.first ou sinon params[:author], params[:content]
    gossip.save
  end

  def index_gossips
  end

end

moi = Controller.new
moi.create_gossip