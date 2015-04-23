require 'spec_helper'

describe "YmlObject" do
  it 'should get correct value of first level' do
    y = YmlObject.load("#{File.dirname(__FILE__)}/yml_sample.yml")
    expect(y.test).to eq('test')
  end
  it 'should get correct value of second level' do
    y = YmlObject.load("#{File.dirname(__FILE__)}/yml_sample.yml")
    expect(y.user.age).to eq(18)
  end
  it 'should get correct value of deeper level' do
    y = YmlObject.load("#{File.dirname(__FILE__)}/yml_sample.yml")
    expect("#{y.user.name.first_name} #{y.user.name.last_name}").to eq("Jason Heylon")
  end

end
