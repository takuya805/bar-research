require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Line < OmniAuth::Strategies::OAuth2
      option :scope, 'email profile openid'

      info do
        {
          name:        raw_info['displayName'],
          image:       raw_info['pictureUrl'],
          description: raw_info['statusMessage'],
          email:    JWT.decode(access_token.params['id_token'], ENV['LINE_SECRET']).first['email']
        }
      end
    end
  end
end