require 'readable_duration'

describe '#readable_duration' do
  it 'Handles 1 second' do
    expect(readable_duration(1)).to eq("1 second")
  end

  it 'Handles 2 seconds' do
    expect(readable_duration(2)).to eq("2 seconds")
  end
end
