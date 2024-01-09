require 'amazon_bedrock'

RubyAmazonBedrock.configure do |config|
  config.region = ENV.fetch('AWS_REGION', nil)
  config.access_key_id = ENV.fetch('AWS_ACCESS_KEY_ID', nil)
  config.secret_access_key = ENV.fetch('AWS_SECRET_ACCESS_KEY', nil)
end

$amazon_bedrock_client = RubyAmazonBedrock::Client.new
