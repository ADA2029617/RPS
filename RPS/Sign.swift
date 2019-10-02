//
//  Sign.swift
//  RPS
//
//  Created by Adan Partida on 10/2/19.
//  Copyright © 2019 Adan Partida. All rights reserved.
//

import Foundation
import GameplayKit // imports random number generator

//generates a random number b/t 0 and 2 inclusive
let randomChoice = GKRandomDistribution(lowestValue: 0, highestValue: 2)

//uses randomly generated number to assign a value to sign
func randomSign() -> Sign {
    let sign = randomChoice.nextInt()
    if sign == 0 {
        return .rock
    } else if sign == 1 {
        return .paper
    } else {
        return .scissors
    }
}

enum Sign {
    case rock
    case paper
    case scissors
    
    func compareSign(opponentSign: Sign) -> GameState {
        
        if self == opponentSign {
            return .draw
        }
        
        switch self {
        case .rock:
            if opponentSign == .paper {
                return .lose
            }
            
        case .paper:
            if opponentSign == .scissors {
                return .lose
            }
            
        case .scissors:
            if opponentSign == .rock {
                return .lose
            }
            
        }
        
        return .win

    }
    
    
    
}


