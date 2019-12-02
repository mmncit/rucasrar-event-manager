class Publisher
 
    # using JSON-encoded strings
    def self.publish(exchange, message = {})
      # grab the fanout exchange
      x = channel.fanout("rucasrar.#{exchange}")
      # and simply publish message
      x.publish(message.to_json)
    end
  
    def self.channel
      @channel ||= connection.create_channel
    end
  
    # using default settings here
    def self.connection
      @connection ||= Bunny.new.tap do |c|
        c.start
      end
    end
  end