describe 'Unicode classes' do
  it 'Any' do
    expect(UCMicro::Properties::Any::REGEX.match('A')).not_to eq nil
    expect(UCMicro::Properties::Any::REGEX.match('')).to eq nil
  end

  it 'Cc' do
    expect(UCMicro::Categories::Cc::REGEX.match("\r")).not_to eq nil
    expect(UCMicro::Categories::Cc::REGEX.match('A')).to eq nil
  end

  it 'Cf' do
    expect(UCMicro::Categories::Cf::REGEX.match(0xAD.chr(Encoding::UTF_8))).not_to eq nil
    expect(UCMicro::Categories::Cf::REGEX.match('A')).to eq nil
  end

  it 'P' do
    expect(UCMicro::Categories::P::REGEX.match(',')).not_to eq nil
    expect(UCMicro::Categories::P::REGEX.match('A')).to eq nil
  end

  it 'Z' do
    expect(UCMicro::Categories::Z::REGEX.match(' ')).not_to eq nil
    expect(UCMicro::Categories::Z::REGEX.match("\u2028")).not_to eq nil
    expect(UCMicro::Categories::Z::REGEX.match("\u2029")).not_to eq nil
    expect(UCMicro::Categories::Z::REGEX.match('A')).to eq nil
  end
end
