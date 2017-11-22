class PagesController < ApplicationController
  def home
    @bunkers = Bunker.all.limit(3)
  end
end
