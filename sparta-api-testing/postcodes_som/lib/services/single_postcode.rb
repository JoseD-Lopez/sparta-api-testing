require 'httparty'
require 'json'

class SinglePostcodeService
  include HTTParty

  base_uri 'https://api.postcodes.io'

  def get_single_postcode(postcode)
    @single_postcode_data = JSON.parse(self.class.get("/postcodes/#{postcode}").body)
  end

  def get_status_code_from_body_response
    @single_postcode_data['status']
  end

  def results_hash
   @single_postcode_data.class
  end

end

# #Instatiated the class
# single = SinglePostcodeService.new
#
# #rUN OPUR GET METHOD AND STORE THE RESULTS IN VARIABLE @single_postcode_data
# single.get_single_postcode('b691ja')
#
# single.print_results
