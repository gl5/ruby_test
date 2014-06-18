# encoding: utf-8

#require 'iconv'
require 'csv'
require 'net/ftp'


ftp_config = {
      host: '58.215.168.157',
      port: '21',
      username: 'ftpuser',
      password: 'ftp110_@#$admaster'
}

file = "home/ftpuser/databank/20140509/104.csv"
ftp = Net::FTP.new

ftp.connect(ftp_config[:host], ftp_config[:port])
ftp.login(ftp_config[:username], ftp_config[:password])
ftp.passive = true

num = 0
ftp.gettextfile(file) do |line|
  num += 1
  p "#{num}----#{line}"
  p `ps -o rss= -p #{Process.pid}`.to_i
end


#File.open("test.csv", "wb") do |file|
#  file << data.force_encoding(Encoding::UTF_16LE)
#end
