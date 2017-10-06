require 'rubygems'
require 'webrick'
require './register'

module WEBrick
  module HTTPServlet
    FileHandler.add_handler('rb', CGIHandler)
  end
end
server = WEBrick::HTTPServer.new({
  :DocumentRoot => '.',
  :CGIInterpreter => WEBrick::HTTPServlet::CGIHandler::Ruby,
  :Port => '8080',
})
['INT', 'TERM'].each {|signal|
  Signal.trap(signal){ server.shutdown }
}

#ここにマッピングを書いていく
server.mount('/', WEBrick::HTTPServlet::FileHandler, 'form.html')
server.mount('/register', Register)
server.start
