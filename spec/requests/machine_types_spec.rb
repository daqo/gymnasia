require 'rails_helper'

RSpec.describe "MachineTypes", type: :request do
  describe "GET /machine_types" do
    it "works! (now write some real specs)" do
      get machine_types_path
      expect(response).to have_http_status(200)
    end
  end
end
