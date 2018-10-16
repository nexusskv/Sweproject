//
//  Incrementor.swift
//  SWEproject
//
//  Created by Rost on 10/16/18.
//  Copyright © 2018 Rost Gress. All rights reserved.
//

import Foundation


class Incrementor {
    private var curentNumber = 0
    var maxNumber    = Int.max
    
    
    /*
    ---> Function return a value of current number
    */
    func getNumber() -> Int {
        return curentNumber
    }
    
    
    /*
     ---> Function incerement a value of current number if it's value less than value of
          maximum
     */
    func incrementNumber() {
        if curentNumber == maxNumber {
            curentNumber = 0
        } else {
            curentNumber += 1
        }
    }
    
    
    /*
     ---> Function set a custom maximum value for current number
     */
    func setMaximumValue(_ maximum: Int) {
        if maximum > 0 {                 // set only positive values
            if maximum < maxNumber / 2 { // set only small differense between current maximum
                maxNumber = maximum
            } else {                     // set to maximum to zero if difference is big
                maxNumber = 0
            }
        }
    }
}
