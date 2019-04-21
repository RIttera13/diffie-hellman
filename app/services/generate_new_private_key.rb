class GenerateNewPrivateKey
  def self.call
    public_number = HTTParty.get(Rails.application.credentials[:firebase_api_url])
    Random.new.rand(1..public_number["n"].to_i)
  end
end
