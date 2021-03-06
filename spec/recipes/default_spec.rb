require 'spec_helper'

describe 'consul-template::default' do
  let(:chef_run) { ChefSpec::ServerRunner.new.converge(described_recipe) }

  it 'includes consul-template::install_binary' do
    expect(chef_run).to include_recipe('consul-template::install_binary')
  end

  it 'includes consul-template::service' do
    expect(chef_run).to include_recipe('consul-template::service')
  end
end
