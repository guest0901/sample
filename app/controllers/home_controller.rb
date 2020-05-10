class HomeController < ApplicationController
  def top
    @q = params[:q]
  end
end