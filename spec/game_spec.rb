require 'game'
describe Game do
    subject(:game) {described_class.new(p1_name, p2_name) }
    let(:p1_name) {double :player}
    let(:p2_name) {double :player}

  describe '#player_1' do
    it 'retrieves the first player' do
      expect(game.player_1).to eq p1_name
    end 
  end

  describe '#player_2' do
    it 'retrieves the second player' do
      expect(game.player_2).to eq p2_name
    end
  end


  describe '#attack' do
    it 'damages the player' do
      expect(p1_name).to receive(:receive_damage)
      game.attack(p1_name)
    end
  end


end