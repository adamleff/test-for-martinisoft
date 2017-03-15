# encoding: utf-8
# copyright: 2015, The Authors
# license: All rights reserved

title 'sample section'

control 'foo-1.0' do
  impact 0.8
  title 'Do foo thing'
  describe foo do
    it { should exist }
    its('key1') { should cmp 'value1' }
  end
end
