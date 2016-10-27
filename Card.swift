//
//  Card.swift
//  CardGame
//
//  Created by Tran, Phuoc on 10/25/16.
//  Copyright © 2016 Tran, Phuoc. All rights reserved.
//

import UIKit

class Card
{
    
    
    
    private var backImage : UIImage
    {
        get
        {
            return self.backImage
        }
        set(backImage)
        {
            self.backImage = backImage
        }
    }
    private var isFaceUp : Bool
    {
        get
        {
            return self.isFaceUp
        }
        set(isFaceUp)
        {
            self.isFaceUp = isFaceUp
        }
    }
    init()
    {
        backImage = UIImage()
        isFaceUp = false
    }
    
    func toString() ->String
    {
        let description = "the card is \(isFaceUp)"
        return description
    }
    
    func getBackImage() -> UIImage
    {
        return backImage
    }
    
    func setBackImage(newImage : UIImage)
    {
        backImage = newImage
    }
    
    func isUp()-> Bool
    {
        return isFaceUp
    }
    
    func setIsFacing(isFaceUp : Bool) -> Void
    {
        self.isFaceUp = isFaceUp
    }
    
}

