//
//  StoryBrain.swift
//  Destini Design Patterns MVC
//
//  Created by Sévio on 27/09/22.
//

import Foundation


var storyNumber = 0


struct StoryBrain {
    let stories = [Story(title: "You see a fork in the road.", choice1: "Take a left.", choice2: "Take a right."),
                   Story(title: "You see a tiger.", choice1: "Shout for help.", choice2: "Play dead."),
                   Story(title: "You find a treasure chest.", choice1: "Open it.", choice2: "Check for traps.")
    ]
    
    
    
    mutating func nextStory(_ userChoice: String) -> Int {
        
        if userChoice == stories[0].choice1 {
            storyNumber += 1
        } else if userChoice == stories[0].choice2 {
            storyNumber += 2
        } else {
            storyNumber = 0
        }
        
        return storyNumber
    }
}
