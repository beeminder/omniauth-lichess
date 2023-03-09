require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Lichess < OmniAuth::Strategies::OAuth2
      option :name, 'lichess'
      option :pkce, true

      option :client_options, {
        :site => 'https://lichess.org/',
        :authorize_url => 'https://lichess.org/oauth',
        :token_url => 'https://lichess.org/api/token',
        :response_type => 'code'
      }
      # Bugfix for regression introduced after omniauth-oauth2 v1.3.1
      # details: https://github.com/intridea/omniauth-oauth2/issues/8
      def callback_url
        options[:callback_url] || (full_host + script_name + callback_path)
      end
    end
  end
end

# todo: maybe add a call to /api/token/test after getting the token in order to also receive an expiry date and a username?

