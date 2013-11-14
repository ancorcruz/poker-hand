require 'test/unit'
require './hand'

class HandTest < Test::Unit::TestCase
  def test_hands_with_no_5_cards_raise_argument_error
    assert_raise ArgumentError do
      Hand.new("TC 4S")
    end
  end

  def test_straight_flush
    hand = Hand.new("TC 8C JC 7C 9C")
    assert_equal "Straight Flush (JC)", hand.rank
  end

  def test_high_card_rank
    hand = Hand.new("3C 4C 8H 9S AD")
    assert_equal "High Card (AD)", hand.rank
  end

end
