require 'simple_aws/api'
require 'simple_aws/call_types/action_param'
require 'simple_aws/signing/version2'

module SimpleAWS

  ##
  # Amazon's Cloud Watch
  #
  # http://docs.amazonwebservices.com/AmazonCloudWatch/latest/APIReference/Welcome.html
  #
  # All requests are POST and always through HTTPS. Use the third parameter to
  # `initialize` if you need to talk to a region other than us-east-1.
  #
  # @see SimpleAWS::CallTypes::ActionParam Calling rules
  # @see SimpleAWS::Response Response handling
  ##
  class CloudWatch < API
    endpoint "monitoring"
    use_https true
    version "2010-08-01"
    default_region "us-east-1"

    include CallTypes::ActionParam
    include Signing::Version2
  end

end
