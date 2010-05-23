require 'memcached'

module ActionController
  module Session
    class MemcachedSessionStore < AbstractStore
      def initialize(app, options = {})
        
        # Support old :expires option
        options[:expire_after] ||= options[:expires]

        super

        @default_options = {
          :namespace => 'rack:session',
          :memcache_server => 'localhost:11211'
        }.merge(@default_options)

        @pool = options[:cache] || Memcached::Rails.new(@default_options[:memcache_server], @default_options)
        
        begin
        @pool.stats
        rescue Memcached::SomeErrorsWereReported
          raise "#{self} unable to find server during initialization."
        end
        
        @mutex = Mutex.new

        super
      end

      private
        def get_session(env, sid)
          sid ||= generate_sid
          begin
            session = @pool.get(sid) || {}
          rescue Errno::ECONNREFUSED
            session = {}
          end
          [sid, session]
        end

        def set_session(env, sid, session_data)
          options = env['rack.session.options']
          expiry  = options[:expire_after] || 0
          @pool.set(sid, session_data, expiry)
          sid
        rescue Errno::ECONNREFUSED
          false
        end      
    end
  end
end