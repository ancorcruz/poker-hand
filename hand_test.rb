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

  def test_four_of_a_kind
    hand = Hand.new "5C KD 5D 5H 5S"
    assert_equal "Four of a Kind (5C)", hand.rank
  end

  def test_flush
    hand = Hand.new "2D AD QD 4D 8D"
    assert_equal "Flush (AD)", hand.rank
  end

  def test_straight
    hand = Hand.new("TD 8C JH 7C 9S")
    assert_equal "Straight (JH)", hand.rank
  end

  def test_high_card_rank
    hand = Hand.new("3C 4C 8H 9S AD")
    assert_equal "High Card (AD)", hand.rank
  end

end
