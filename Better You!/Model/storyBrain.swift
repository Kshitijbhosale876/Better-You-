//
//  storyBrain.swift
//  Better You!
//
//  Created by Kshitij Bhosale on 14/10/21.
//

import Foundation
 var storyNumber = 0

struct storyBrain {
    var storyNumber = 0
    
    let stories = [
         Story(
            title: "You wake up to an alarm at 6:00a.m in the morning, you want to start your morning habit of waking up early and not slack behind on the daily goals.",
            choice1: "Do not snooze the alarm and wake up.", choice1Destination: 2,
            choice2: "NO WAY! snooze and sleep for few more minutes.", choice2Destination: 1
        ),
         Story(
            title: "Woke up and missed the morning workout now you have only time for a quick breakfast and leave to go outside.",
            choice1: "At least I can workout anytime in the rest of the day.", choice1Destination: 2,
            choice2: "Wait, Whats healthy breakfast and working out. I skip it!", choice2Destination: 3
        ),
         Story(
            title: "You woke up on time and went to gym and had a healthy breakfast and that too before alot of people have even started the day, your toughest task of the day are done and can focus on completing another tasks",
            choice1: "You did alot already now treat yourself with something unhealthy.", choice1Destination: 5,
            choice2: "You decide to control the urges to eat unhealthy and stay on track", choice2Destination: 4
        ),
         Story(
            title: "You decide to eat the way you feel and decide not give enough time in the day for your health.",
            choice1: "The", choice1Destination: 0,
            choice2: "End", choice2Destination: 0
        ),
         Story(
            title: "As you focused on keep track of your eating habits and workout everyday you are one step closer to the dream body you want to achive and have a healthy meantal state as well.",
            choice1: "Congratulations!", choice1Destination: 0,
            choice2: "One step closer.", choice2Destination: 0
        ),
         Story(
            title: "You decide to treat yourself with something unhealthy which is okay but dont follow the same routine tommrow. It's okay if you fall off the track but important t get right back. Enjoy junk food occasionally.",
            choice1: "The", choice1Destination: 0,
            choice2: "End", choice2Destination: 0
        )
    ]
    
    func getStoryTitle()-> String{
        return stories[storyNumber].title
    }
    
    func getChoice1()-> String {
        return stories[storyNumber].choice1
    }
    func getChoice2()-> String {
        return stories[storyNumber].choice2
    }
    
    mutating func nextStory(userChoice: String){
        let currrentStories = stories[storyNumber]
        if userChoice == currrentStories.choice1{
            storyNumber = currrentStories.choice1Destination
        }
        else if userChoice == currrentStories.choice2 {
            storyNumber = currrentStories.choice2Destination
        }
    }
    
    

    
    
}
