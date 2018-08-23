class HomeController < ApplicationController
  1
  skip_before_action :authenticate_user!, :only => [:index]

  def index
  end
end
