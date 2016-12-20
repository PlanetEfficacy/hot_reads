class HomeController < ApplicationController
  def index
    @links = Link.top
  end
end
