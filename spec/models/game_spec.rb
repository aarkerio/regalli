require 'spec_helper'

RSpec.describe Game, type: :model do

  let(:game)  { FactoryBot.create :game}

  context 'Saves and update ranks' do
    describe '#saves file' do
      it 'saves and updates' do
        game.save
        game.reload
        #expect(game.content).to eql()
        expect(game.user.yrate).to eql(0)
      end
    end
  end

end
