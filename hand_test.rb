require 'test/unit'
require './hand'

class HandTest < Test::Unit::TestCase
  def test_high_card_rank
    hand = Hand.new(["3C 4C 8H 9S AD"])
    assert_equal "High Card (AD)", hand.rank
  end

end
