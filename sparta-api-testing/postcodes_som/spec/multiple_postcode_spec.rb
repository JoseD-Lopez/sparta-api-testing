require 'spec_helper'

describe 'MultiPostcode' do

  context 'requesting information on a single postcode works correctly' do

    before(:all) do
      @postcode_array = ['SE38PF','SE96RJ']
      @postcode_multi = Postcodesio.new.multiple_postcode_service
      @postcode_multi.get_multiple_postcodes(@postcode_array)
    end

    it 'should respond with a status message of 200' do
      expect(@postcode_multi.get_status_code_from_body_response).to eq 200
    end

    end
  end
