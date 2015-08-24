require "trello_fetcher/version"

require "highline/import"
require "trello"

module TrelloFetcher
  def self.fetch(key, token)
    #
    # get token
    # https://trello.com/1/authorize?key=<YOUR APPLICATION KEY>&name=<APPLICATION NAME>&expiration=never&response_type=token&scope=read
    #
    Trello.configure do |config|
      config.developer_public_key = key
      config.member_token = token
    end

    me = Trello::Member.find("me")
    target_boards = me.boards.select do |board|
    	board.starred && !board.closed
    end

    target_boards.each do |board|
    	board.lists.select do |list|
    		if list.name == "Do"
    			list.cards.each do |card|
    				 say("<%= color('#{board.name}', :blue) %> #{card.name}")
    			end
    		end
    	end
    end
  end
end
