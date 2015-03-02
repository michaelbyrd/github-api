class WelcomeController < ApplicationController
  def index
    @profile = Profile.new("michaelbyrd")
    @response = @profile.response
    @names = @profile.repository_names
  end
end
