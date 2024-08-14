//
//  2753.swift
//  baekjun
//
//  Created by Mi Gyeong Park on 8/12/24.
//

import Foundation

func tsfth() {
    if let input = readLine(), let n = Int(input) {
        if n % 4 == 0 && (n % 100 != 0 || n % 400 == 0) {
            print("1")
        } else {
            print("0")
        }
    }
}
