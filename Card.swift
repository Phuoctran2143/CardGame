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
    private var isFaceUp : Bool
    
    init()
    {
        backImage = UIImage()
        isFaceUp = false
    }
    
    func toString() ->String
    {
        let description = "the card is \(isFaceUp)
        return description
    }
    
    func getBackImage() -> UIImage
    {
        return backImage
    }
    
    func isUP()-> Bool
    {
    return isFaceUp
    }
    
}

