require './card'

require 'rubygems'
require 'debugger'

class Hand
  attr_reader :cards

  CARDS_PER_HAND = 5

  def initialize hand_str
    hand = hand_str.split(" ")
    raise ArgumentError, "should have #{CARDS_PER_HAND} cards" if hand.count != CARDS_PER_HAND

    @cards = hand.inject([]) { |hand, card| hand << Card.new(card) }.sort
  end

  def rank
    rank_key = RANKS.keys.detect { |rank| send "#{rank}?" }
    rank_str = rank_key ? "#{RANKS[rank_key]}" : "High Card"
    "#{rank_str} (#{high_card})"
  end

  RANKS = {
    straight_flush: "Straight Flush",
    #four_of_a_kind: "Four of a Kind",
    #full_house: "Full House",
    #flush: "Flush",
    #straight: "Straight",
    #three_of_a_kind: "Three of a Kind",
    #double_pair: "Two Pairs",
    #pair: "Pair",
  }


  protected

  def high_card
    @cards.last
  end

  def straight_flush?
    straight? and flush?
  end

  def flush?
    suit = @cards.first.suit
    @cards.all? { |card| card.suit == suit }
  end

  def straight?
    values = @cards.map(&:value)
    values == (values.first..values.last).entries
  end
end
