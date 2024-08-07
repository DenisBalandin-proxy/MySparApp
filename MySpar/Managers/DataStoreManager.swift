//
//  DataStoreManager.swift
//  MySpar
//
//  Created by Denis on 8/7/24.
//

import Foundation

final class DataStoreManager {
    static let shared = DataStoreManager()
    
    private init() { }
    
    func receiveItems() -> [Item] {
        [
            Item(
                id: 1,
                specialInfo: .top,
                isFavorite: false,
                image: "Image1",
                rating: 4.1,
                sale: nil,
                title: "Мясной продукт, насыщен полезными свойствами",
                measurement: "230г",
                county: "Россия 🇷🇺",
                newPrice: "530,60",
                oldPrice: "967",
                reviews: 19
            ),
            Item(
                id: 2,
                specialInfo: nil,
                isFavorite: false,
                image: "Image2",
                rating: 4.1,
                sale: nil,
                title: "Мясной продукт, насыщен полезными свойствами",
                measurement: "230г",
                county: nil,
                newPrice: "535,60",
                oldPrice: "967",
                reviews: 19
            ),
            Item(
                id: 3,
                specialInfo: .new,
                isFavorite: false,
                image: "Image3",
                rating: 4.1,
                sale: nil,
                title: "Мясной продукт",
                measurement: "230г",
                county: nil,
                newPrice: "530,60",
                oldPrice: "967",
                reviews: 19
            ),
            Item(
                id: 4,
                specialInfo: nil,
                isFavorite: true,
                image: "Image4",
                rating: 4.1,
                sale: 23,
                title: "Мясной продукт, насыщен полезными свойствами",
                measurement: "230г",
                county: nil,
                newPrice: "530,60",
                oldPrice: "967",
                reviews: 19
            ),
            Item(
                id: 5,
                specialInfo: .cart,
                isFavorite: false,
                image: "Image5",
                rating: 4.1,
                sale: 34,
                title: "Мясной продукт",
                measurement: "230г",
                county: "Россия 🇷🇺",
                newPrice: "530,60",
                oldPrice: "967",
                reviews: 19
            ),
            Item(
                id: 6,
                specialInfo: nil,
                isFavorite: false,
                image: "Image6",
                rating: 4.1,
                sale: nil,
                title: "Мясной продукт",
                measurement: "230г",
                county: "Россия 🇷🇺",
                newPrice: "530,60",
                oldPrice: "967",
                reviews: 19
            ),
            Item(
                id: 7,
                specialInfo: nil,
                isFavorite: false,
                image: "Image7",
                rating: 4.1,
                sale: nil,
                title: "Мясной продукт",
                measurement: "230г",
                county: "Россия 🇷🇺",
                newPrice: "530,60",
                oldPrice: "967",
                reviews: 19
            ),
            Item(
                id: 8,
                specialInfo: nil,
                isFavorite: false,
                image: "Image8",
                rating: 4.1,
                sale: nil,
                title: "Мясной продукт, насыщен полезными свойствами",
                measurement: "230г",
                county: nil,
                newPrice: "530,60",
                oldPrice: "967",
                reviews: 19
            ),
            Item(
                id: 9,
                specialInfo: nil,
                isFavorite: false,
                image: "Image9",
                rating: 4.1,
                sale: nil,
                title: "Мясной продукт",
                measurement: "230г",
                county: nil,
                newPrice: "530,60",
                oldPrice: "967",
                reviews: 19
            ),
            Item(
                id: 10,
                specialInfo: nil,
                isFavorite: false,
                image: "Image10",
                rating: 4.1,
                sale: nil,
                title: "Мясной продукт, насыщен полезными свойствами",
                measurement: "230г",
                county: nil,
                newPrice: "530,60",
                oldPrice: "967",
                reviews: 19
            ),
            Item(
                id: 11,
                specialInfo: nil,
                isFavorite: false,
                image: "Image11",
                rating: 4.1,
                sale: nil,
                title: "Мясной продукт",
                measurement: "230г",
                county: nil,
                newPrice: "530,60",
                oldPrice: "967",
                reviews: 19
            ),
            Item(
                id: 12,
                specialInfo: nil,
                isFavorite: false,
                image: "Image12",
                rating: 4.1,
                sale: nil,
                title: "Мясной продукт",
                measurement: "230г",
                county: nil,
                newPrice: "530,60",
                oldPrice: "967",
                reviews: 19
            ),
            Item(
                id: 13,
                specialInfo: nil,
                isFavorite: false,
                image: "Image13",
                rating: 4.1,
                sale: nil,
                title: "Мясной продукт",
                measurement: "230г",
                county: nil,
                newPrice: "530,60",
                oldPrice: "967",
                reviews: 19
            ),
            Item(
                id: 14,
                specialInfo: nil,
                isFavorite: false,
                image: "Image14",
                rating: 4.1,
                sale: nil,
                title: "Мясной продукт, насыщен полезными свойствами",
                measurement: "230г",
                county: nil,
                newPrice: "530,60",
                oldPrice: "967",
                reviews: 19
            )
        ]
    }
}
