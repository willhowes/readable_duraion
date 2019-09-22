require 'readable_duration'

describe '#readable_duration' do
  it 'Handles 1 second' do
    expect(readable_duration(1)).to eq("1 second")
  end
end
