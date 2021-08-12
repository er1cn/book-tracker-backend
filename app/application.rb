class Application

  def call(env)
    res = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path.match(/test/)
      return [200, { 'Content-Type' => 'application/json' }, [ {:message => "test response!"}.to_json ]]

    else
      res.write "Path Not Found"
      
    end

    if req.path == '/quotes' && req.get?
      return [
        200, 
        { 'Content-Type' => 'application/json' }, 
        [ Quote.all.to_json ]
      ]

  
  end

end
end