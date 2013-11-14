require './card'

require 'rubygems'
require 'debugger'

class Hand
  attr_reader :cards, :high_card_in_rank

  CARDS_PER_HAND = 5

  def initialize hand_str
    hand = hand_str.split(" ")
    raise ArgumentError, "should have #{CARDS_PER_HAND} cards" if hand.count != CARDS_PER_HAND

    @cards = hand.inject([]) { |hand, card| hand << Card.new(card) }.sort
  end

  def rank
    rank_key = RANKS.keys.detect { |rank| send "match_#{rank}" }
    "#{RANKS[rank_key]} (#{@high_card_in_rank})"
  end

  RANKS = {
    straight_flush: "Straight Flush",
    four_of_a_kind: "Four of a Kind",
    #full_house: "Full House",
    flush: "Flush",
    straight: "Straight",
    #three_of_a_kind: "Three of a Kind",
    #double_pair: "Two Pairs",
    #pair: "Pair",
    high_card: "High Card"
  }


  protected

  def match_high_card
    @high_card_in_rank = @cards.last
  end

  def match_straight_flush
    match_high_card if match_straight and match_flush
  end

  def match_flush
    suit = @cards.first.suit
    match_high_card if @cards.all? { |card| card.suit == suit }
  end

  def match_straight
    values = @cards.map(&:value)
    match_high_card if values == (values.first..values.last).entries
  end

  def match_four_of_a_kind
    kind_set = @cards.inject(nil) do |result, card|
      set = @cards.select { |c| c.value == card.value }
      set.size == 4 ? set : result
    end

    @high_card_in_rank = kind_set.first if kind_set
  end
end
