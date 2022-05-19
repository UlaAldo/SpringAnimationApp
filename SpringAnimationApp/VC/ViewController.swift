//
//  ViewController.swift
//  SpringAnimationApp
//
//  Created by Юлия Алдохина on 16/02/22.
//

import Spring

class ViewController: UIViewController {
    
    @IBOutlet var animaView: SpringView!
    @IBOutlet var animaLabel: SpringLabel!
    @IBOutlet var runButton: SpringButton!
    
    private let animas = Animation.getAnimations()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animaLabel.layer.cornerRadius = 10
        animaLabel.font = UIFont(name: "Helvetica-Light", size: 20)
        
    }
    
    @IBAction func animaChangeButton() {
        
        let index = animas.randomElement() ?? Animation(name: "pop",
                                                        curve: "spring",
                                                        duration: 1.5,
                                                        delay: 0.2,
                                                        rotate: 2.2)
        
        animaLabel.text = """
                            Animation
                        
                            name: \(index.name)
                            curve: \(index.curve)
                            duration: \(String(format: "%.2f", index.duration))
                            delay: \(String(format: "%.2f", index.delay))
                            rotate: \(String(format: "%.2f", index.rotate))
                        """
        runButton.setTitle("RUN \(index.name)", for: .normal)
        
        animaView.animation = index.name
        animaView.curve = index.curve
        animaView.duration = index.duration
        animaView.delay = index.delay
        animaView.rotate = index.rotate
        animaView.animate()
        
    }
    

}

