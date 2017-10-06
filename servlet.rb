require 'rubygems'
require 'webrick'
require 'pry'
require 'json'
require './dao'
#require 'erb'

class Register < WEBrick::HTTPServlet::AbstractServlet
  def do_POST(request, response)
    params = JSON.parse request.body

    mysql = Dao.new
    binding.pry
    mysql.insert(params)

  end

  def do_GET(request, response)
    print 'HTTP Method: GET', "\n"
  end
end

class Confirm < WEBrick::HTTPServlet::AbstractServlet
  #.erb で動的に確認ページ返したい..
  def do_POST(request, response)
    params = {
      :name => "'#{request.query['name']}'",
      :email => "'#{request.query['email']}'",
      :age => request.query['age'],
      :gender => request.query['gender'],
      :image => request.query['image']
    }
    contents = <<-EOS
    <html>
      <meta charset="utf-8">
      <body>
        確認画面です
        <form action="/register" method="post">
          <input type="hidden" name="name" value=<%= params[:name] %>>
          <input type="hidden" name="email" value=<%= params[:email] %>>
          <input type="hidden" name="age" value=<%= params[:age] %>>
          <input type="hidden" name="gender" value=<%= params[:gender] %>>
          <input type="file" name="image" accept="image/*" class="validate[required]" id="image" value=<%= params[:name] %>>
          <input type="submit" value="登録">
        </form>
      </body>
    </html>

    EOS


    ERB.new(contents)
    #確認画面描画
    #hiddenで値を持たせる
    #フォーム程度の値は普通セッションには持たせない
  end

  def do_GET(request, response)
    print 'HTTP Method: GET', "\n"
  end
end
