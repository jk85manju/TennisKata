//
//  File.swift
//  TennisApp
//
//  Created by manju V on 21/02/22.
//  Copyright © 2022 Tcs. All rights reserved.
//

import Foundation
public class Scores {
    public func FromSequence(sequence: String) -> String {
        var a = 0
        var b = 0
        
        for c in sequence {
            if HasWon(a: a, b: b){
                return "invalid sequence"
            }
            
            if c == "A" {
                a += 1
            } else if c == "B"  {
                b += 1
            } else {
                return "invalid sequence"
            }
        }
        
        
        if (b>3 && a+1<b) {
            return "game player B"
        }
        
        
        if (a>3 && b+1<a) {
            return "game player A"
        }
        
        if (a>b && a>3 && b>0){
            return "advantage player A"
        }
        
        if (b>a && b>3 && a>0){
            return "advantage player B"
        }
        
        if a == b && a > 2 {
            return "deuce"
        }
        
        let aScore = getScore(s: a, player: "A")
        let bScore = getScore(s: b, player: "B")
        
        
        if (a == b) {
            return aScore + "-all"
        }
        
        return aScore + "-" + bScore
        
    }
    
    func getScore(s:Int, player:String) ->String{
        switch s {
        case 0:
            return "love"
        case 3:
            return "40"
        default:
            return "\(15 * s)"
        }
    }
    
    func HasWon(a:Int, b:Int) -> Bool{
        return (a>3 && a-b >= 2) || (b>3 && b-a >= 2)
    }
}
