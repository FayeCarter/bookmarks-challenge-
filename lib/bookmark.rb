require 'pg'

class Bookmark

  attr_reader :all

  def initialize
    @all = ["http://makers.tech","http://www.destroyallsoftware.com","http://www.google.co.uk"]
  end
end
