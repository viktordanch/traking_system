require 'spec_helper'

describe TicketsController do

  describe "GET 'create'" do
    it "returns http success" do
      get 'create'
      response.should be_success
    end
  end

  describe "GET 'update'" do
    it "returns http success" do
      get 'update'
      response.should be_success
    end
  end

  describe "GET 'close'" do
    it "returns http success" do
      get 'close'
      response.should be_success
    end
  end

end
