class Application

  def call(env)
    resp = Rack::Response.new
    time = Time.now
    if time.hour >= 12
      resp.write "Good Afternoon!"
      resp.finish
    elsif time.hour < 12
      resp.write "Good Morning!"
      resp.finish
    end
  end

end
