class Profile
  def initialize(username)
    @response = HTTParty.get("https://api.github.com/users/#{username}/repos")
  end

  def repository_names
    @response.map { |r| r["name"] }
  end
end
