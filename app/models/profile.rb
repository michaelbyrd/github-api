class Profile
  attr_reader :response

  def initialize(username)
    @username = username
    @response = HTTParty.get("https://api.github.com/users/#{@username}/repos", 
                            :headers => {
                            "Authorization" => "token #{ENV['GITHUB_TOKEN']}",
                            "User-Agent" => username })
  end

  def repository_names
    @response.map { |r| r["name"] }
  end

  def repository_urls
    @reposonse.map { |r| r["url"] }
  end
end
