//
//  ImageView.swift
//  MySpar
//
//  Created by Denis on 8/7/24.
//

import SwiftUI

struct ImageView: View {
    let item: Item
    let showReviews: Bool
    
    var body: some View {
        ZStack(alignment: .bottom) {
            Image(item.image)
                .resizable()
                .scaledToFit()
            
            HStack {
                Spacer()
                
                if let sale = item.sale {
                    Text("\(sale)%")
                        .foregroundStyle(Resources.Colors.sale)
                        .font(Resources.Fonts.sale)
                }
            }
        }
    }
}
