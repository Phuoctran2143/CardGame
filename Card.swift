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
    
    
    
    internal var backImage : UIImage
    
    internal var isFaceUp : Bool
    
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

