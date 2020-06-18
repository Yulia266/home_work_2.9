//
//  AnimationModel.swift
//  home_work_2.9
//
//  Created by Юлия on 18.06.2020.
//  Copyright © 2020 Юлия. All rights reserved.
//

struct Animation {
    let animation: String
    let curve: String
    // продолжительность
    let duration: Float
    //задержка
    let delay: Float
}

extension Animation  {
    static func getAnimation() -> [Animation] {
        return [
            Animation(
                animation: "pop",
                curve: "easeIn",
                duration: 3,
                delay: 1
            ),
            Animation(
                animation: "shake",
                curve: "easeOut",
                duration: 3,
                delay: 1
            ),
            Animation(
                animation: "morph",
                curve: "linear",
                duration: 3,
                delay: 1
            ),
            Animation(
                animation: "squeeze",
                curve: "spring",
                duration: 3,
                delay: 1
            )
        ]
    }
}
