//
//  Player.swift
//  MarioParty
//
//  Created by Wrood Alrashidi on 03/07/2020.
//  Copyright © 2020 Dalal Alhazeem. All rights reserved.
//

import Foundation

struct Player {
    var name: String
    func bgName() -> String {
        return name + "BG"
    }
    
    func musicNmae() -> String{
        return name + ".WAV"
    }
}

let players : [Player] = [
  
    Player(name: "Mario"),
    Player(name: "Bowser"),
    Player(name: "Luigi"),
    Player(name: "Peach"),
    Player(name: "Waluigi"),
    Player(name: "Yoshi")


    
]
