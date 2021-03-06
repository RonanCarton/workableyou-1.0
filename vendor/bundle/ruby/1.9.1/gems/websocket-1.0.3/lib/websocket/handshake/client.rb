require 'URI' unless defined?(URI)

module WebSocket
  module Handshake
    # Construct or parse a client WebSocket handshake.
    #
    # @example
    #   @handshake = WebSocket::Handshake::Client.new(:url => 'ws://example.com')
    #
    #   # Create request
    #   @handshake.to_s # GET /demo HTTP/1.1
    #                   # Upgrade: websocket
    #                   # Connection: Upgrade
    #                   # Host: example.com
    #                   # Sec-WebSocket-Origin: http://example.com
    #                   # Sec-WebSocket-Version: 17
    #                   # Sec-WebSocket-Key: dGhlIHNhbXBsZSBub25jZQ==
    #
    #   # Parse server response
    #   @handshake << <<EOF
    #   HTTP/1.1 101 Switching Protocols
    #   Upgrade: websocket
    #   Connection: Upgrade
    #   Sec-WebSocket-Accept: s3pPLMBiTxaQ9kYGzzhZRbK+xOo=
    #
    #   EOF
    #
    #   # All data received?
    #   @handshake.finished?
    #
    #   # No parsing errors?
    #   @handshake.valid?
    #
    class Client < Base

      # Initialize new WebSocket Client
      #
      # @param [Hash] args Arguments for client
      #
      # @option args [String]  :host Host of request. Required if no :url param was provided.
      # @option args [String]  :origin Origin of request. Optional, should be used mostly by browsers. Default: nil
      # @option args [String]  :path Path of request. Should start with '/'. Default: '/'
      # @option args [Integer] :port Port of request. Default: nil
      # @option args [String]  :query. Query for request. Should be in format "aaa=bbb&ccc=ddd"
      # @option args [Boolean] :secure Defines protocol to use. If true then wss://, otherwise ws://. This option will not change default port - it should be handled by programmer.
      # @option args [String]  :url URL of request. Must by in format like ws://example.com/path?query=true. Every part of this url will be overriden by more specific arguments.
      # @option args [String]  :uri Alias to :url
      # @option args [Integer] :version Version of WebSocket to use. Default: 13 (this is version from RFC)
      #
      # @example
      #   Websocket::Handshake::Client.new(:url => "ws://example.com/path?query=true")
      def initialize(args = {})
        super

        @version = args[:version] || DEFAULT_VERSION
        @origin = args[:origin]

        if args[:url] || args[:uri]
          uri     = URI.parse(args[:url] || args[:uri])
          @secure = (uri.scheme == 'wss')
          @host   = uri.host
          @port   = uri.port
          @path   = uri.path
          @query  = uri.query
        end

        @secure = args[:secure] if args[:secure]
        @host   = args[:host]   if args[:host]
        @port   = args[:port]   if args[:port]
        @path   = args[:path]   if args[:path]
        @query  = args[:query]  if args[:query]

        @path   = '/'           if @path.nil? || @path.empty?

        set_error(:no_host_provided) unless @host

        include_version
      end

      # Add text of response from Server. This method will parse content immediately and update state and error(if neccessary)
      #
      # @param [String] data Data to add
      #
      # @example
      #   @handshake << <<EOF
      #   HTTP/1.1 101 Switching Protocols
      #   Upgrade: websocket
      #   Connection: Upgrade
      #   Sec-WebSocket-Accept: s3pPLMBiTxaQ9kYGzzhZRbK+xOo=
      #
      #   EOF
      def <<(data)
        @data << data
        if parse_data

        end
      end

      # Should send content to server after finished parsing?
      # @return [Boolean] false
      def should_respond?
        false
      end

      private

      # Include set of methods for selected protocol version
      # @return [Boolean] false if protocol number is unknown, otherwise true
      def include_version
        case @version
          when 75 then extend Handler::Client75
          when 76, 0 then extend Handler::Client76
          when 1..3  then extend Handler::Client01
          when 4..13 then extend Handler::Client04
          else set_error(:unknown_protocol_version) and return false
        end
        return true
      end

      FIRST_LINE = /^HTTP\/1\.1 (\d{3})[\w\s]*$/

      # Parse first line of Server response.
      # @param [String] line Line to parse
      # @return [Boolean] True if parsed correctly. False otherwise
      def parse_first_line(line)
        line_parts = line.match(FIRST_LINE)
        set_error(:invalid_header) and return false unless line_parts
        status = line_parts[1]
        set_error(:invalid_status_code) and return false unless status == '101'

        return true
      end

    end
  end
end
