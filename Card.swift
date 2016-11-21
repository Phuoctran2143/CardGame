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
    

    
    internal var isFaceUp : Bool
    
    init()
    {
        
        isFaceUp = false
    }
    
    func toString() ->String
    {
        let description = "the card is \(isFaceUp)"
        return description
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

