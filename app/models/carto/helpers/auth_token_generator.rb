module Carto
  module AuthTokenGenerator
    def get_auth_token
      auth_token || generate_auth_token
    end

    def populate_auth_token
      self.auth_token ||= SecureRandom.urlsafe_base64(nil, false)
    end

    private

    def generate_auth_token
      populate_auth_token
      save
      auth_token
    end
  end
end
