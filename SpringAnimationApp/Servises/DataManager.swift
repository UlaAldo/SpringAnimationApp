//
//  DataManager.swift
//  SpringAnimationApp
//
//  Created by Юлия Алдохина on 16/02/22.
//

import Foundation

class DataManager {
    
    static let sample = DataManager()
    
    let animas = ["shake",
                  "pop",
                  "morph",
                  "squeeze",
                  "wobble",
                  "swing",
                  "flipX",
                  "flipY",
                  "fall",
                  "squeezeLeft",
                  "squeezeRight",
                  "squeezeDown",
                  "squeezeUp",
                  "slideLeft",
                  "slideRight",
                  "slideDown",
                  "slideUp",
                  "fadeIn",
                  "fadeOut",
                  "fadeInLeft",
                  "fadeInRight",
                  "fadeInDown",
                  "fadeInUp",
                  "zoomIn",
                  "zoomOut",
                  "flash"
    ]
    
    let curves = ["spring",
                 "linear",
                 "easeIn",
                 "easeOut",
                 "easeInOut"
    ]
    
    let duration = (1.0...3.0)
    let delay = (0...1.0)
    let rotate = (0...5.0)
    
    
    
    private init() {}
}
