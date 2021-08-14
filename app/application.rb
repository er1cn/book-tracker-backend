class Application

  def call(env)
    res = Rack::Response.new
    req = Rack::Request.new(env)
  

    

    #Quote Index Route

    if req.path.match('/quotes') && req.get?
      return [
        200, 
        { 'Content-Type' => 'application/json' }, 
        [ Quote.all.to_json ]
      ]
    end
  

    #Create

    if req.path.match('/quotes') && req.post?
      body = JSON.parse(req.body.read)
      quote = Quote.create(body)
      return [201, {'Content-Type' => 'application/json'}, [quote.to_json ]]
    end

    #static route to test rack
    if req.path.match(/test/)
      return [200, { 'Content-Type' => 'application/json' }, [ {:message => "test response!"}.to_json]]
    else
      res.write "Path Not Found"

    end
  end
end

