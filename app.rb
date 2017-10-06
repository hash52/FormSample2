require 'rubygems'
require 'webrick'
require './servlet'

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
WEBrick::HTTPServlet::FileHandler.add_handler("erb", WEBrick::HTTPServlet::ERBHandler)

['INT', 'TERM'].each {|signal|
  Signal.trap(signal){ server.shutdown }
}

#ここにマッピングを書いていく
server.mount('/', WEBrick::HTTPServlet::FileHandler, 'form.html')
server.mount('/confirm', Confirm)
server.mount('/register', Register)
server.start
