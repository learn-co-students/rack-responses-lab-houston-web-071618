class Application

  def call(env)
    resp = Rack::Response.new
    current_time = Time.now.hour
    noon = 12

    if current_time > noon
      resp.write "Good Afternoon!"
    else
      resp.write "Good Morning!"
    end

    resp.finish
  end

end
