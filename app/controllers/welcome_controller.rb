class WelcomeController < ApplicationController
  def index
    @response = Profile.new("michaelbyrd")
    @names = @response.repository_names
  end
end
