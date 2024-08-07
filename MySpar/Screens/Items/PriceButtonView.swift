//
//  PriceButtonView.swift
//  MySpar
//
//  Created by Denis on 8/7/24.
//

import SwiftUI

struct PriceButtonView: View {
    let measure: String
    let price: Double
    @Binding var addedToBucket: Bool
    
    @State private var quantity = 1
    
    private var totalPrice: Double {
        Double(quantity) * price
    }
    
    var body: some View {
        HStack {
            Button(action: {
                if quantity == 1 {
                    quantity -= 1
                    addedToBucket = false
                } else {
                    quantity -= 1
                }
            }, label: {
                Text("—")
                    .font(.system(size: 25, weight: .bold))
            })
            .buttonStyle(PlainButtonStyle())
            
            Spacer()
            
            VStack {
                HStack {
                    Text("\(quantity)")
                    Text(measure)
                }
                Text("\(String(format: "%.2f", totalPrice)) ₽")
                    .font(.system(size: 12))
            }
            
            Spacer()
            
            Button(action: {
                quantity += 1
            }, label: {
                Text("+")
                    .font(.system(size: 25, weight: .bold))
            })
            .buttonStyle(PlainButtonStyle())
        }
        .padding(EdgeInsets(top: 3, leading: 16, bottom: 3, trailing: 16))
        .foregroundColor(.white)
        .background(Color.green)
        .clipShape(Capsule())
    }
}
