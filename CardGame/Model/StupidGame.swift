//
//  StupidGame.swift
//  CardGame
//
//  Created by Tran, Phuoc on 11/11/16.
//  Copyright © 2016 Tran, Phuoc. All rights reserved.
//

import Foundation

class StupidGame
{
    //declartion section
    private var deck = playingCardDeck()
    private var currentCard1 = PlayingCard()
    private var currentCard2 = PlayingCard()
    private var currentHand = [PlayingCard]()
    private var discardDeck = [PlayingCard]()
    private var pointDeck = [PlayingCard]()
    private var score = Int()


    // inits
    init ()
    {
        deck = playingCardDeck()
        currentCard1 = PlayingCard()
        currentCard2 = PlayingCard()
        currentHand = [PlayingCard]()
        discardDeck = [PlayingCard]()
        pointDeck = [PlayingCard]()
        score = Int()
        
        
    }

    // Methods
    func startGame() -> Void
    {
        deck.shuffleDeck()
        
        currentCard1 = (deck.drawRandomCard() as? PlayingCard)!
        currentCard2 = (deck.drawRandomCard() as? PlayingCard)!
        currentHand.append(currentCard1)
        currentHand.append(currentCard2)
        
    }
    func checkMatch() ->Bool
    {
        let hasMatch :Bool
        
        if (currentHand[0].rank == currentHand[1].rank) || (currentHand[0].suit == currentHand [1].suit)
        {
            hasMatch = true
        }
        else
        {
            hasMatch = false
        }
            return hasMatch
        
    }
    
    func playMatchGame() -> Void
    {
        if deck.cards.count > 0
        {
            if checkMatch()
            {
                score += 5
            }
            else
            {
                score -= 2
            }
        }
    
    }
    func getMatch() -> Void
    {
        discardDeck.append(currentCard1)
        discardDeck.append(currentCard2)
        currentHand.removeAtIndex(0)
        currentHand.removeAtIndex(0)
       
    }
    func notMatch() -> Void
    {
        discardDeck.append(currentHand[1])
        currentHand.removeAtIndex(1)
        currentCard2 = (deck.drawRandomCard() as? PlayingCard)!
        currentHand.insert(currentCard2, atIndex: 1)
    }
    

}






















