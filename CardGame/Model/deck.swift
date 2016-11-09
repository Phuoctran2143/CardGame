//
//  deck.swift
//  CardGame
//
//  Created by Tran, Phuoc on 11/2/16.
//  Copyright © 2016 Tran, Phuoc. All rights reserved.
//

import Foundation

class deck
{
    lazy var cards = [Card]()
    
    func shuffleDeck() -> Void
    {
        var tempDeck = [Card]()
        while cards.count > 0
        {
            // chooses a valid random intex in the range of 0... cards.count-1
            let randomSpot = Int (arc4random() % UInt32(cards.count))
            // takes the card form the deck.the deckdecreases count.
            let removedCard = cards.removeAtIndex(randomSpot)
            // add the removed card to the end of the temporary deck
            tempDeck.append(removedCard)
        }
        // change the state deck with the temporary deck
        cards = tempDeck
    }
    
    func cutDeck() -> Void
    
    
    {
    
    }

        
}
