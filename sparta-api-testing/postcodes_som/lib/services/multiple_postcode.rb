require 'httparty'
require 'json'

class MultiplePostcodeService
  include HTTParty

  base_uri 'https://api.postcodes.io'

  def get_multiple_postcodes(postcodes_array)
    @multiple_postcode_data = JSON.parse(self.class.post('/postcodes', body: { "postcodes" => postcodes_array}).body)
  end

  def get_status_code_from_body_response
    @multiple_postcode_data['status']
  end

  def results_hash
   @multiple_postcode_data.to be_a Hash
  end


end


# multi = MultiplePostcodeService.new
#
# puts multi. get_multiple_postcodes(['b601ja', 'sw155du'])
