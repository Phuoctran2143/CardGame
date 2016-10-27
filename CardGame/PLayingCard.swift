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
    private var rank : Int
    {
        get
        {
            return self.rank
        }
        set(rank)
        {
            self.rank = rank
        }
    }
    private var suit : String
        {
        get
        {
            return self.suit
        }
        set(suit)
        {
            self.suit = suit
        }
    }
    private var color : UIColor
        {
        get
        {
            return self.color
        }
        set(color)
        {
            self.color = color
        }
    }
    private var frontImage : UIImage
        {
        get
        {
            return self.frontImage
        }
        set(frontImage)
        {
            self.frontImage = frontImage
        }
    }
    
    override init()
    {
        super.init()
        frontImage = UIImage(0)
        color = UIColor()
        rank = 0
        suit = String()
    }
    

    func getRank() -> Int
    {
        return self.rank
    }
    func SetRank(rank : Int)
    {
    self.rank = rank
    }
}