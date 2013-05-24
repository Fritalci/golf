##Golf_Program

require 'rspec'
require_relative '../lib/golf'
describe HoleLayout do
  before(:each) do
    @layout = HoleLayout.new

  end

  it 'instantiates the HoleLayout' do
    expect(@layout).to be_true
  end
    
  it 'pulls in a csv' do
    @layout.import_csv('par.csv')
    expect(@layout.par_per_hole).to eql([4,3,5,4,3,4,5,4,4,4,3,5,4,3,4,5,4,4])

  end
end