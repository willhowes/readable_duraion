require 'readable_duration'

describe '#readable_duration' do
  it 'Handles 1 second' do
    expect(readable_duration(1)).to eq("1 second")
  end

  it 'Handles 2 seconds' do
    expect(readable_duration(2)).to eq("2 seconds")
  end

  it 'Handles 62 seconds correctly' do
    expect(readable_duration(62)).to eq("1 minute and 2 seconds")
  end

  it 'handles 61 seconds correctly' do
    expect(readable_duration(61)).to eq("1 minute and 1 second")
  end

  it 'handles 2 minutes' do
    expect(readable_duration(120)).to eq("2 minutes")
  end
end
