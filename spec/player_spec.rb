require 'player'

describe Player do
  let(:p1_name) { "Cynthia" }
  subject { described_class.new(p1_name) }

  it { is_expected.to respond_to(:name) }

  it 'returns Cynthia when asked for player name' do
    expect(subject.name).to eq p1_name
  end
end
