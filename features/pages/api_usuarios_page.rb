class User
  include HTTParty
  require_relative '../hooks/hooks'
  base_uri "http://dummy.restapiexample.com/api/v1"

  def initialize(body)
    @options = {:body => body}
  end

  def post_user
    self.class.post("/create", @options)
  end

  def get_user
    self.class.get("/employees")
  end
end

