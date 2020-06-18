//
//  ViewController.swift
//  home_work_2.9
//
//  Created by Юлия on 18.06.2020.
//  Copyright © 2020 Юлия. All rights reserved.
//

import Spring

class ViewController: UIViewController {
    
    @IBOutlet var infoAboutAnimation: SpringLabel!
    @IBOutlet var springAnimationView: SpringView!
    
    let animations = Animation.getAnimation()
    private var animationIndex = 0
    private var nameOfButton = ""
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
    }
    
    @IBAction func changeAnimtionButton(_ sender: SpringButton) {
        
        springAnimationView.animation = animations[animationIndex].animation
        springAnimationView.curve = animations[animationIndex].curve
        springAnimationView.duration = CGFloat(animations[animationIndex].duration)
        springAnimationView.delay = CGFloat(animations[animationIndex].delay)
        springAnimationView.animate()
        
        changeTextView()
        
        if animationIndex == animations.count - 1 {
            animationIndex = 0
        } else {
            animationIndex += 1
            
        }
        nameOfButton = String(animations[animationIndex].animation)
        sender.setTitle("Run to \(nameOfButton)", for: .normal)
    }
    
    private func changeTextView() {
        infoAboutAnimation.text = "Параметры анимации: название анимации - \(springAnimationView.animation), кривая - \(springAnimationView.curve)"
        //infoAboutAnimation.autohide = true
    }
}

