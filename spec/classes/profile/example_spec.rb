require 'spec_helper'
require 'puppet/confine/exists'

describe 'profile::example' do
  on_supported_os({
    supported_os: [
      {
        'operatingsystem' => 'CentOS',
        'operatingsystemrelease' => [
          '6',
          '7'
        ]
      },
      {
        'operatingsystem' => 'windows',
        'operatingsystemrelease' => [
          '2012 R2'
        ]
      }
    ]
  }).each do |os, facts|
    context "on #{os}" do
      let(:facts) do
        facts.merge({
          puppetversion: Puppet.version,
          role: 'example'
        })
      end
      before do
        Puppet::Confine::Exists.any_instance.stubs(:which).returns(nil)
        Puppet::Confine::Exists.any_instance.stubs(:which).with('rpm').returns('/bin/rpm')
        Puppet::Confine::Exists.any_instance.stubs(:which).with('yum').returns('/bin/yum')
      end
      %w{profile::example}.each do |puppet_class|
        it { is_expected.to contain_class(puppet_class) }
      end
      it { is_expected.to compile.with_all_deps }
    end
  end
end
