//
//  PriceSectionView.swift
//  MySpar
//
//  Created by Denis on 8/7/24.
//

import SwiftUI

struct PriceSectionView: View {
    let oldPrice: String
    let newPrice: String
    
    var body: some View {
        VStack(alignment: .leading) {
            createPriceView()
            
            Text(oldPrice)
                .font(Resources.Fonts.title1)
                .foregroundColor(.gray)
                .strikethrough(true, color: .gray)
        }
    }
    
    @ViewBuilder
    private func createPriceView() -> some View {
        let separatedPrice = newPrice.components(separatedBy: ",")
        
        HStack(alignment: .top, spacing: 2) {
            Text(separatedPrice.first ?? "Ошибка")
                .lineLimit(1)
                .font(Resources.Fonts.price)
            
            if let subprice = separatedPrice.last {
                Text(subprice)
                    .lineLimit(1)
                    .minimumScaleFactor(0.4)
                    .font(Resources.Fonts.subprice)
            }
            
            ZStack {
                HStack {
                    Text("₽")
                        .font(Resources.Fonts.measure)
                        .offset(x: 7, y: -5)
                    
                    Text("кг")
                        .font(Resources.Fonts.measure)
                        .offset(x: 3, y: 5)
                }
                Text("/")
                    .font(Resources.Fonts.priceSeparator)
                    .rotationEffect(.degrees(30))
            }
            .scaleEffect(0.9)
        }
    }
}
