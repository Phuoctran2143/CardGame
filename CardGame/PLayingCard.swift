//
//  PLayingCard.swift
//  CardGame
//
//  Created by Tran, Phuoc on 10/25/16.
//  Copyright © 2016 Tran, Phuoc. All rights reserved.
//

import UIKit

class PlayingCard : Card
{
    internal var rank : Int
    
    internal var suit : String
    
    internal var color : UIColor
    
    
    override init()
    {
        
        self.color = UIColor.redColor()
        self.rank = 0
        self.suit = String()
        super.init()
        
    }
    
init(withRank: Int, ofSuit: String)
    {
        
        color = UIColor.redColor()
        rank = withRank
        suit = ofSuit
        super.init()
    }
    
    override func toString() -> String
    {
        let facing : String
        if self.isUp()
        {
            facing = " is face up."
        }
        else
        {
            facing = " is face down"
        }

        let description = "This PlayingCard has a face value of \(rank), a color of \(color), and is of the \(suit) suit\(facing)"
        
        return description
    }
    

    func getRank() -> Int
    {
        return self.rank
    
    }
        func SetRank(rank : Int)
    {
    
        self.rank = rank
    }
    func getCardData() -> String
    {
        let data = "\(PlayingCard.validRanks()[rank])\(suit)"
        return data
    }
 

    class func validRanks () -> [String]
    {
    return["?", "A", "2", "3", "4", "5", " 6", "7", "8", "9", "10", "J", "Q", "K"]
    }
    class func maxRank() -> Int
    {
        return validRanks().count - 1
    }

    class func validSuits() -> [String]
    {
    return["♥️","♠️","♦️","♣️"]
    
    }


}







