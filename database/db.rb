require "mysql2"


module Mysql_connect
    @connection = Mysql2::Client.new(:host => ENV['HOST'], :username => ENV['USER_DB'], :password => ENV['PASSWD'], :database => ENV['DB_NAME'])

    def self.get_match_ip(ip_value)
        result = @connection.query(
            "SELECT * FROM ruby_database.Companys Where ip = '#{ip_value}'"
        )
    end
end
