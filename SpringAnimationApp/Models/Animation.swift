//
//  File.swift
//  SpringAnimationApp
//
//  Created by Юлия Алдохина on 16/02/22.
//

import Foundation

struct Animation {
    let name: String
    let curve: String
    let duration: Double
    let delay: Double
    let rotate: Double
    
    static func getAnimations() -> [Animation] {
        var animations: [Animation] = []
        
        let animas = DataManager.sample.animas
        let curves = DataManager.sample.curves
        let duration = DataManager.sample.duration
        let delay = DataManager.sample.delay
        let rotate = DataManager.sample.rotate
        
        for index in 0..<animas.count {
            let oneAnima = Animation(name: animas[index],
                                     curve: curves.randomElement() ?? "spring",
                                     duration: Double.random(in: duration),
                                     delay: Double.random(in: delay),
                                     rotate: Double.random(in: rotate)
            )
            animations.append(oneAnima)
        }
      return animations
    }
    
    
}
