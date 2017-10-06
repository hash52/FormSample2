require 'rubygems'
require 'webrick'
require './dao'

class Register < WEBrick::HTTPServlet::AbstractServlet
  def do_POST(request, response)
    params = {
      :name => "'#{request.query['name']}'",
      :email => "'#{request.query['email']}'",
      :age => request.query['age'],
      :gender => request.query['gender'],
      :image => request.query['image']
    }

    mysql = Dao.new
    mysql.insert(params)

  end

  def do_GET(request, response)
    print 'HTTP Method: GET', "\n"
  end
end
