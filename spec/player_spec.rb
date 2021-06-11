require 'player'

describe Player do
  subject(:p1_name) { Player.new("Cynthia") }
  subject(:p2_name) { Player.new("Merryn") }


  it { is_expected.to respond_to(:name) }

  it 'returns Merryn when asked for player name' do
    expect(subject.name).to eq "Merryn"
  end

  describe '#attack' do
    it 'damages the player' do
      expect(p1_name).to receive(:receive_damage)
      p2_name.attack(p1_name)
    end
  end

  describe '#receive_damage' do
    it 'reduces the player hit points' do 
      expect { p1_name.receive_damage }.to change { p1_name.hitpoints }.by(-10)
    end
  end
end
