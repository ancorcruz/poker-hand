# Poker Hands

## Problem Description

The challenge is to write some Ruby code that satisfies the following requirements

* Given a single poker hand, returns it's rank (see details of ranks below)
* Given 2 poker hands as input, compares them and return a result indicating which hand, if any, is the highest

Please note: we are not asking for you to develop a full poker simulation, just code that can compare poker hands

The architecture you use to achieve this is up to you. You may use gems, if you feel they are appropriate, but please keep in mind that the aim of the exercise is to see how you solve the problem. Whatever you choose to do, we will probably want to discuss your choices afterwards.

We are much more interested in seeing your approach to solving problems and coding style than we are about seeing a complete implementation so don't worry if you can't complete every requirement in time. We do however, recommend that what functionality you do submit is complete, and that where it isn't, you give us a summary of what you would have done, given more time to solve the problem.

Once you have received this challenge, you are effectively on the clock. We only put you on the clock so that we get some indication of how long it took you to respond. We advise you to spend around 2 hours on this test, however you can spend more or less as you please.

Please email us back a zipped up version of the repository along with a Github link to your public repository so that we can review this online.

## Poker rules description

A poker deck contains 52 cards - each card has a suit which is one of clubs, diamonds, hearts, or spades (denoted C, D, H, and S in the input data). Each card also has a value which is one of 2, 3, 4, 5, 6, 7, 8, 9, 10, jack, queen, king, ace (denoted ). For scoring purposes, the suits are unordered while the values are ordered as given above, with 2 being the lowest and ace the highest value.

You may find it helpful to denote the values with 2, 3, 4, 5, 6, 7, 8, 9, T, J, Q, K, A and the suits with C, D, H, and S, i.e. 2C is the two of clubs and QS is the queen of spades.

A poker hand consists of 5 cards dealt from the deck. Poker hands are ranked by the following partial order from lowest to highest.

* High Card: Hands which do not fit any higher category are ranked by the value of their highest card. If the highest cards have the same value, the hands are ranked by the next highest, and so on.

* Pair: 2 of the 5 cards in the hand have the same value. Hands which both contain a pair are ranked by the value of the cards forming the pair. If these values are the same, the hands are ranked by the values of the cards not forming the pair, in decreasing order.

* Two Pairs: The hand contains 2 different pairs. Hands which both contain 2 pairs are ranked by the value of their highest pair. Hands with the same highest pair are ranked by the value of their other pair. If these values are the same the hands are ranked by the value of the remaining card.

* Three of a Kind: Three of the cards in the hand have the same value. Hands which both contain three of a kind are ranked by the value of the 3 cards.

* Straight: Hand contains 5 cards with consecutive values. Hands which both contain a straight are ranked by their highest card.

* Flush: Hand contains 5 cards of the same suit. Hands which are both flushes are ranked using the rules for High Card.

* Full House: 3 cards of the same value, with the remaining 2 cards forming a pair. Ranked by the value of the 3 cards.

* Four of a kind: 4 cards with the same value. Ranked by the value of the 4 cards.

* Straight flush: 5 cards of the same suit with consecutive values. Ranked by the highest card in the hand.
