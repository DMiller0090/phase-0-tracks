require_relative 'GuessGame'

describe GuessGame do
  let(:GuessGame) { GuessGame.new("Bob") }

  it "initializes guess_Word" do
    expect(GuessGame.guess_word).to eq ['_','_','_']
  end

  it "sets the game status to be not won" do
    expect(GuessGame.game_won).to be_false
  end

end