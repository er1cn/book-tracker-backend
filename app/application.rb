class Application

  def call(env)
    res = Rack::Response.new
    req = Rack::Request.new(env)

   #Quote Index Route
    if req.path == '/quotes' && req.get?
      quotes = Quote.all
      return [200, 
      { 'Content-Type' => 'application/json' }, 
      [quotes.to_json]]
    end

    #Character Index Route
    if req.path == '/characters' && req.get?
      characters = Character.all
      return [200, 
      { 'Content-Type' => 'application/json' }, 
      [characters.to_json]]
    end

    #Show Characters Route
    if req.path.match('/characters') && req.get?
      id= req.path.split('/')[2]
      begin
      character = Character.find(id)
        quotes = character.quotes
        character_res = { 
          name: character.name,
          quotes: quotes
        }
        return [
          200,
          { 'Content-Type' => 'application/json' },
          [ character_res.to_json ]
        ]
      rescue
       return [
          404,
          { 'Content-Type' => 'application/json' },
          [ { error: 'character not found'}.to_json]
        ]
      end
    end

    #Show Quotes Route
    if req.path.match('/quotes') && req.get?
      id= req.path.split('/')[2]
      begin
      quote = Quote.find(id)
        quote_res = { 
          quote: quote.text
        }
        return [
          200,
          { 'Content-Type' => 'application/json' },
          [ quote_res.to_json ]
        ]
      rescue
       return [
          404,
          { 'Content-Type' => 'application/json' },
          [ { error: 'quote not found'}.to_json]
        ]
      end
    end



    #Quote Create Route
    if req.path.match('/quotes/') && req.post?
      body = JSON.parse(req.body.read)
      quote = Quote.create(body)
      return [200, 
      { 'Content-Type' => 'application/json' }, 
      [quote.to_json]]
    end

    #Character Create Route
    if req.path.match('/characters/') && req.post?
      body = JSON.parse(req.body.read)
      character = Character.create(body)
      return [200, 
      { 'Content-Type' => 'application/json' }, 
      [character.to_json]]
    end

    #Character Update
    if req.path.match('/characters') && req.patch?
      id = req.path.split('/')[2]
      body=JSON.parse(req.body.read)
      begin 
        character = Character.find(id)
        character.update(body)
        return [202, { 'Content-Type' => 'application/json'}, [character.to_json]]
        rescue
          return
          [404,
          { 'Content-Type' => 'application/json' },
          [ { message: "Something went wrong"}.to_json]
        ]
      end
    end

    #Quote Update
    if req.path.match('/quotes') && req.patch?
      id = req.path.split('/')[2]
      body=JSON.parse(req.body.read)
      begin 
        quote = Quote.find(id)
       quote.update(body)
        return [202, { 'Content-Type' => 'application/json'}, [quote.to_json]]
        rescue
          return
          [404,
          { 'Content-Type' => 'application/json' },
          [ { message: "Something went wrong"}.to_json]
        ]
      end
    end

    #Character Delete
    if req.path.match('/characters') && req.delete?
      id = req.path.split('/')[2]
      begin
        character = Character.find(id)
        character.destroy
        return [200, {'Content-Type' => 'application/json'}, [{message: "Character destroyed"}.to_json]]
        rescue
          return [404, {'Content-Type' => 'application/json'}, [{message: "Character not found"}.to_json]]
    end
  end

    #Quote Delete
    if req.path.match('/quotes') && req.delete?
      id = req.path.split('/')[2]
      begin
        quote = Quote.find(id)
        quote.destroy
        return [200, {'Content-Type' => 'application/json'}, [{message: "Quote destroyed"}.to_json]]
        rescue
          return [404, {'Content-Type' => 'application/json'}, [{message: "Quote not found"}.to_json]]
    end
  end



  
  

    #static route to test rack
    if req.path.match(/test/)
      return [200, { 'Content-Type' => 'application/json' }, [ {:message => "test response!"}.to_json]]
    else
      res.write "Path Not Found"

    end

    res.finish
  end
end

