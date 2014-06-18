require "socket"

module SocketClient
  def self.connect(host, port)
    sock = TCPSocket.new(host, port)
    begin
      result = yield sock
    ensure
      sock.close
    end
    result
  rescue Errno::ECONNREFUSED
  end
end

# connect to echo server, see next example
SocketClient.connect("localhost", 5555) do |sock|
  sock.wirte("hello")
  puts sock.readmine
end
