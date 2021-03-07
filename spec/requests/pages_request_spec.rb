require 'rails_helper'

RSpec.describe "Pages", type: :request do
  context "HOMEPAGE" do
    before(:each) do
      get "/"
    end
    it "should respond with a status of 200" do
      expect(response).to have_http_status(:success)
    end
    it "should render pages/index page" do
      expect(response).to render_template("index")
    end
  end
end
