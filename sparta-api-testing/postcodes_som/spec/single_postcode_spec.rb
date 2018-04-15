require 'spec_helper'

describe 'SinglePostcode' do

  context 'requesting information on a single postcode works correctly' do

    before(:all) do
      @postcode_single = Postcodesio.new.single_postcode_service
      @postcode_single.get_single_postcode('b691ja')
    end

    it 'should respond with a status message of 200' do
      expect(@postcode_single.get_status_code_from_body_response).to eq 200
    end

    it "should have a results hash" do
      expect(@postcode_single.results_hash).to eq Hash
    end

    end
  end
