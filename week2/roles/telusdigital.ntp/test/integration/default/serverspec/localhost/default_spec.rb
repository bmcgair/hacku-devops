require 'spec_helper'

describe 'ansible-ntp::default' do

  describe package('ntp') do
    it { should be_installed.by('apt') }
  end

  describe service('ntp') do
    it { should be_enabled }
    it { should be_running }
  end

  describe file('/etc/ntp.conf') do
    it { should be_file }
  end

end
