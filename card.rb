class Card
  include Comparable

  VALUES = %w( 2 3 4 5 6 7 8 9 T J Q K A )

  attr_reader :suit, :value

  def initialize card_id
    @value = VALUES.index(card_id[0])
    @suit  = card_id[1]
  end

  def <=> other_card
    value <=> other_card.value
  end

  def to_s
    "#{VALUES[value]}#{suit}"
  end
end
