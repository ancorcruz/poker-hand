require 'test/unit'
require './card'

class CardTest < Test::Unit::TestCase
  def test_sorting
    card_a = Card.new "5D"
    card_b = Card.new "AS"
    card_c = Card.new "TC"

    assert card_b > card_a, "#{card_b} > #{card_a}"
    assert card_b > card_c, "#{card_b} > #{card_c}"
    assert card_c > card_a, "#{card_c} > #{card_a}"
  end
end
