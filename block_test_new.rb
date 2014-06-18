require "socket"

class SimpleServer
  def initialize(port, host="0.0.0.0")
    @port, @host = port, host
  end

  def on_connection(&block)
    @connection_handler = block
  end

  def start
    tcp_server = TCPServer.new(@host, @port)
    while connection = tcp_server.accept
      @connection_handler.call(connection)
    end
  end
end

server = SimpleServer.new(5555)
server.on_connection do |socket|
  socket.write(socket.readline)
  socket.close
end

server.start
