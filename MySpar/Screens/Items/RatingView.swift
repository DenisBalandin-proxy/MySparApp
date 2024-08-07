//
//  RatingView.swift
//  MySpar
//
//  Created by Denis on 8/7/24.
//

import SwiftUI

struct RatingView: View {
    let item: Item
    let showReviews: Bool
    
    var body: some View {
        HStack {
            Image(.star)
            
            Text(String(item.rating))
                .font(Resources.Fonts.title1)
            
            if showReviews {
                Divider()
                    .frame(height: 16)
                
                Text("\(String(item.reviews)) отзывов")
                    .font(Resources.Fonts.title1)
                    .foregroundStyle(Resources.Colors.gray1)
            }
        }
        .padding(.all, 4)
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 8))
    }
}
