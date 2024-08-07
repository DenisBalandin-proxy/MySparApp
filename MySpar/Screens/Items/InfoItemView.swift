//
//  InfoItemView.swift
//  MySpar
//
//  Created by Denis on 8/7/24.
//

import SwiftUI

struct InfoItemView: View {
    let item: Item
    let padding: CGFloat
    @Binding var addedToBucket: Bool
    
    @State private var measure = 1
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("\(item.title) \(item.measurement)")
                .font(Resources.Fonts.title1)
                .foregroundStyle(Resources.Colors.gray1)
                .padding(.trailing, padding)
            
            if let contry = item.county {
                Text(contry)
                    .font(Resources.Fonts.title1)
                    .foregroundStyle(Resources.Colors.gray2)
            }
            
            Spacer()
            
            if !addedToBucket {
                HStack(alignment: .bottom) {
                    PriceSectionView(
                        oldPrice: item.oldPrice,
                        newPrice: item.newPrice
                    )
                    
                    Spacer()
                    
                    Button(action: {
                        addedToBucket.toggle()
                    }) {
                        Image(.bucket)
                            .frame(
                                width: 48,
                                height: 36
                            )
                            .padding(
                                EdgeInsets(
                                    top: 4,
                                    leading: 0,
                                    bottom: 4,
                                    trailing: 0
                                )
                            )
                            .background(.green)
                            .clipShape(Capsule())
                    }
                    .buttonStyle(PlainButtonStyle())
                }
            } else {
                VStack {
                    Picker("Выбрать меру", selection: $measure) {
                        Text("Шт").tag(0)
                        Text("Кг").tag(1)
                    }
                    .pickerStyle(.segmented)
                    
                    PriceButtonView(
                        measure: measure == 0 ? "шт" : "кг",
                        price: item.newPrice.stringToDouble,
                        addedToBucket: $addedToBucket
                    )
                }
            }
        }
        .padding(.all, 8)
    }
}
