//
//  playingCardDeck.swift
//  CardGame
//
//  Created by Tran, Phuoc on 11/2/16.
//  Copyright © 2016 Tran, Phuoc. All rights reserved.
//

import Foundation

class playingCardDeck : deck
{
    lazy var card = [PlayingCard]()
    
    override init()
    {
        super.init()
        
        for suit in PlayingCard.validSuits()
        {
            for var rank = 1; rank < PlayingCard.maxRank(); rank += 1
            {
                let currentCard = PlayingCard(withRank: rank, ofSuit: suit)
                self.card.append(currentCard)
            }
        }
    }
    
}
        
   
 