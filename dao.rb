require "rubygems"
require "mysql"
#require "pry"

class Dao
  def initialize
    @con = Mysql::connect("localhost", "hashi", "ulm3543", "test")
    @con.query("set character set utf8")
  end
  def selectAll
    @con.query("SELECT * FROM TEST.USER")
  end
  def insert params
    @con.query("INSERT INTO TEST.USER(name, age, gender) VALUES(#{params[:name]}, #{params[:age]}, #{params[:gender]})")
  end

  def test
    print 'Dao.test'
  end
end
