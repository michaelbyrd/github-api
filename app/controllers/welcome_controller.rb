class WelcomeController < ApplicationController
  def index
    profile = Profile.new("michaelbyrd")
    @repositories = profile.repositories
    @profile = profile.profile
  end
end
