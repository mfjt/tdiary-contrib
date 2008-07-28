$:.unshift(File.dirname(__FILE__))
require 'spec_helper'

describe "gist plugin" do
	DUMMY_GIST_ID = 1234567890

	it 'should render javascript tag with specified gist-id' do
		plugin = fake_plugin(:gist)
		snippet = plugin.gist(DUMMY_GIST_ID)
		expected = (<<-EOS).chomp
<script src="http://gist.github.com/1234567890.js"></script>
		EOS
		snippet.should == expected
	end
end