//
//  Resources.swift
//  MySpar
//
//  Created by Denis on 8/7/24.
//

import SwiftUI

enum Resources {
    enum Colors {
        static let infoPink = Color(hex: "#FC6A6F").opacity(0.9)
        static let infoPurple = Color(hex: "#7A79BA").opacity(0.9)
        static let infoGreen = Color(hex: "#5BCD7B").opacity(0.9)
        
        static let shadow = Color(hex: "#8B8B8B").opacity(0.2)
        static let whiteBg = Color(hex: "#FFFFFF").opacity(0.5)
        
        static let gray1 = Color(hex: "#262626").opacity(0.8)
        static let gray2 = Color(hex: "#262626").opacity(0.6)
        
        static let sale = Color(hex: "#C32323")
    }
    
    enum Fonts {
        static let info = customFont(with: 10, and: .regular)
        static let title1 = customFont(with: 12, and: .regular)
        static let sale = customFont(with: 16, and: .bold)
        
        
        static let measure = customFont(with: 14, and: .bold)
        static let price = customFont(with: 20, and: .bold)
        static let subprice = customFont(with: 16, and: .bold)
        static let priceSeparator = customFont(with: 20, and: .regular)
        
        static func customFont(
            with size: CGFloat,
            and weight: Font.Weight
        ) -> Font {
            Font.system(size: size, weight: weight)
        }
    }
}
