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

  it 'handles 1 hour' do
    expect(readable_duration(3600)).to eq("1 hour")
  end

  it 'handles 2 hours' do
    expect(readable_duration(7200)).to eq("2 hours")
  end

  it 'handles 1 hour and 2 minutes' do
    expect(readable_duration(3720)).to eq("1 hour and 2 minutes")
  end

  it 'handles 1 hour, 1 minute and 2 seconds' do
    expect(readable_duration(3662)).to eq("1 hour, 1 minute and 2 seconds")
  end
end
