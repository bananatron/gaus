require File.expand_path '../spec_helper.rb', __FILE__

describe 'Gaus Application' do
  it 'should allow access landing page' do
    get '/'
      expect(last_response).to be_ok
    end
end
