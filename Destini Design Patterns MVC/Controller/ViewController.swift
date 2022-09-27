//
//  ViewController.swift
//  Destini Design Patterns MVC
//
//  Created by Sévio on 26/09/22.
//

import UIKit

class ViewController: UIViewController {
    
    var storyBrain = StoryBrain()
    
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }
    
    
    func updateUI() {
        storyLabel.text = storyBrain.stories[storyNumber].title
        choice1Button.setTitle("\(storyBrain.stories[storyNumber].choice1)", for: .normal)
        choice2Button.setTitle("\(storyBrain.stories[storyNumber].choice2)", for: .normal)
    }
    
    @IBAction func choiceMade(_ sender: UIButton) {
        storyNumber = storyBrain.nextStory(sender.currentTitle!)
        updateUI()
    }
    
    
}

