//
//  ViewController.swift
//  Better You!
//
//  Created by Kshitij Bhosale on 22/09/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var viewLable: UILabel!
    @IBOutlet weak var choice2Button: UIButton!
    @IBOutlet weak var choice1Button: UIButton!
    
        var StoryBrain = storyBrain() 
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        // Do any additional setup after loading the view.
    }
    @IBAction func choiceMade (_ sender: UIButton ){
        StoryBrain.nextStory(userChoice: sender.currentTitle!)
        updateUI()
        
    }
    
    @objc func updateUI() {
        
        viewLable.text = StoryBrain.getStoryTitle()
        choice1Button.setTitle(StoryBrain.getChoice1(), for: .normal)
        choice2Button.setTitle(StoryBrain.getChoice2(), for: .normal)
        
        
        
    }
    

}

