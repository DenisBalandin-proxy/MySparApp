//
//  String + Extension.swift
//  MySpar
//
//  Created by Denis on 8/7/24.
//

import Foundation

extension String {
    var stringToDouble: Double {
        let str = self.replacingOccurrences(of: ",", with: ".")
        if let doubleFromString =  Double(str) {
            return doubleFromString
        } else {
            return 0
        }
    }
}
