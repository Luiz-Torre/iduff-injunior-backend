class JsonWebToken
    Secret = Rails.application.secrets.secret_key_base
    def self.encode(payload)
        JWT.encode(payload, Secret)
    end
    def self.decode(token)
        begin
            JWT.decode(token, Secret)
            
        rescue => exception
            return nil    
        end

    end
end