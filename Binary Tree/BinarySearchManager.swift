//
//  BinarySearchManager.swift
//  Binary Tree
//
//  Created by Полина Толстенкова on 03.09.2022.
//

import Foundation

class BinarySearchManager {
    var result: String = ""


    func binarySearch(item: Int) -> Any {
        result = ""
        let sizeArray = Int.random(in: item...100)
        let list = Array(1...sizeArray)
        var low = 0
        var high = list.count - 1

        while low <= high {
            let mid = (low + high) / 2
            let attempt = list[mid]
            if attempt == item {
                result += "\(attempt)"
                return "item found at index \(mid)"
            }else if attempt > item {
                high = mid - 1
                result += "\(attempt), "
            }else{
                low = mid + 1
                result += "\(attempt), "
            }
        }

        return "item doesn't exist"

    }
}
