class Profile
  attr_reader :repositories, :profile

  def initialize(username)
    @username = username
    @repositories = HTTParty.get("https://api.github.com/users/#{@username}/repos",
                            :headers => {
                            "Authorization" => "token #{ENV['GITHUB_TOKEN']}",
                            "User-Agent" => username })
    @profile = HTTParty.get("https://api.github.com/users/#{@username}",
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
