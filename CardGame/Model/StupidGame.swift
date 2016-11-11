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
    private var deck = PlayingCard()
    private var currentCard1 = PlayingCard()
    private var currentCard2 = PlayingCard()
    private var currentHand = [PlayingCard]()
    private var discardHand = [PlayingCard]()
    private var pointDeck = [PlayingCard]()
    private var score = Int()


    // inits
    init ()
        
    {
        deck = PlayingCard()
        currentCard1 = PlayingCard()
        currentCard2 = PlayingCard()
        currentHand = [PlayingCard]()
        discardHand = [PlayingCard]()
        pointDeck = [PlayingCard]()
        score = Int()
        
        
    }

    // Methods
    func startGame() -> Void
    {
        deck.shuffleDeck()
        currentCard1 = 
    }
}