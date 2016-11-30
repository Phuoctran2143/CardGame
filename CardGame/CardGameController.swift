//
//  CardGameController.swift
//  CardGame
//
//  Created by Tran, Phuoc on 10/27/16.
//  Copyright © 2016 Tran, Phuoc. All rights reserved.
//

import UIKit

class CardGameController : UIViewController
{

    @IBOutlet weak var cardLabel: UILabel!
    @IBOutlet weak var cardButton: UIButton!
    private lazy var currentDeck = playingCardDeck()
    private lazy var clickCount = Int()
    

    override func viewDidLoad()
    {
        let tempCard = Card()
        print(tempCard.toString())
        let otherTemp = PlayingCard()
        print(otherTemp.toString())
    }
    @IBAction func flipCard(sender: UIButton)
    {
        clickCount += 1
        let words = "The random card button has been clicked\(clickCount) times"
        cardLabel.text = words
        
        if let currentCard = currentDeck.drawRandomCard() as? PlayingCard
        {
            cardButton.setTitle("\(currentCard.getCardData())", forState: UIControlState.Normal)
        }
        else
        {
            cardLabel.text = "The card deck was exhausted - reinitializing"
            currentDeck = playingCardDeck()
        }
        
    }
}
