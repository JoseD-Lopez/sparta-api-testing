require 'spec_helper'

describe Weatherio do

  context 'getting weather information' do

    before(:all) do
      @weatherio = Weatherio.new
      @response = @weatherio.get_weather_by_cityid('707860') #input a postcode
      p @response
    end

    it "should respond with a status message of 200" do
      expect(@response['cod']).to eq "200"
    end

    it "should have a results hash" do
      expect(@response).to be_a Hash
    end

  end

end
