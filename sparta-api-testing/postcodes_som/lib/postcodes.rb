require_relative 'services/single_postcode'
require_relative 'services/multiple_postcode'

class Postcodesio

  def single_postcode_service
    SinglePostcodeService.new
  end

  def multiple_postcode_service
    MultiplePostcodeService.new
  end
end

# superClass = Postcodesio.new
#
# puts superClass.single_postcode_service.get_single_postcode('b691ja')

# superClass = Postcodesio.new
#
# puts superClass.multiple_postcode_service.get_multiple_postcodes(['b601ja', 'sw155du'])
