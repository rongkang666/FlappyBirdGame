//
//  GameManager.swift
//  Flappy Bird
//
//  Created by apple on 10/05/2017.
//  Copyright © 2017 Kang Rong. All rights reserved.
//

import Foundation

class GameManager {
    
    static let instance = GameManager();
    fileprivate init() {}
    
    var birdIndex = Int(0);
    var birds = ["Blue", "Green", "Red"];
    
    func incrementIndex() {
        birdIndex += 1;
        if birdIndex == birds.count {
            birdIndex = 0;
        }
    }
    
    func getBird() -> String {
        return birds[birdIndex];
    }
    
    func setHighscore(_ highscore: Int) {
        UserDefaults.standard.set(highscore, forKey: "Highscore");
    }
    
    func getHighscore() -> Int {
        return UserDefaults.standard.integer(forKey: "Highscore");
    }
    
}
