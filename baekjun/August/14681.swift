//
//  14681.swift
//  baekjun
//
//  Created by Mi Gyeong Park on 8/8/24.
//

import Foundation

func ofseo() {
    let input = readLine()!
    let input2 = readLine()!
    if let n = Int(input), let n2 = Int(input2) {
        if n > 0 && n2 > 0 {
            print(1)
        }else if n < 0 && n2 > 0 {
            print(2)
        }else if n < 0 && n2 < 0 {
            print(3)
        }else {
            print(4)
        }
    }
}
