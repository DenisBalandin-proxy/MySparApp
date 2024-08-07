//
//  Item.swift
//  MySpar
//
//  Created by Denis on 8/7/24.
//

import SwiftUI

enum ItemInfo: String {
    case top = "Удар по ценам"
    case new = "Новинки"
    case cart = "Цена по картер"
    
    var color: Color {
        switch self {
        case .top:
            return Resources.Colors.infoPink
        case .new:
            return Resources.Colors.infoPurple
        case .cart:
            return Resources.Colors.infoGreen
        }
    }
}

struct Item: Hashable {
    let id: Int
    let specialInfo: ItemInfo?
    var isFavorite: Bool
    let image: String
    let rating: Double
    let sale: Int?
    let title: String
    let measurement: String
    let county: String?
    let newPrice: String
    let oldPrice: String
    let reviews: Int
}
