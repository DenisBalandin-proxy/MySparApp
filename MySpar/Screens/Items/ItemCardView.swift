//
//  ItemCardView.swift
//  MySpar
//
//  Created by Denis on 8/7/24.
//

import SwiftUI

struct ItemCardView: View {
    let item: Item
    let type: ItemCollectionType
    
    @EnvironmentObject private var viewModel: ItemViewModel
    @State private var addedToBucket = false
    
    var body: some View {
        GeometryReader { proxy in
            ZStack(alignment: .top) {
                switch type {
                case .grid:
                    VStack {
                        ZStack(alignment: .bottomLeading) {
                            ImageView(
                                item: item,
                                showReviews: false
                            )
                            
                            RatingView(
                                item: item,
                                showReviews: false
                            )
                        }
                        
                        InfoItemView(
                            item: item,
                            padding: 0,
                            addedToBucket: $addedToBucket
                        )
                    }
                case .list:
                    HStack {
                        ImageView(
                            item: item,
                            showReviews: true
                        )
                        .frame(width: 144)
                        
                        VStack(alignment: .leading) {
                            RatingView(
                                item: item,
                                showReviews: true
                            )
                            
                            InfoItemView(
                                item: item,
                                padding: 16,
                                addedToBucket: $addedToBucket
                            )
                        }
                    }
                }
                
                HStack(alignment: .top) {
                    if let info = item.specialInfo {
                        Text(info.rawValue)
                            .padding(
                                EdgeInsets(
                                    top: 4,
                                    leading: 12,
                                    bottom: 3,
                                    trailing: 6
                                )
                            )
                            .background(info.color)
                            .foregroundStyle(.white)
                            .font(Resources.Fonts.info)
                            .clipShape(RoundedRectangle(cornerRadius: 6))
                        
                    }
                    
                    Spacer()
                    
                    VStack(spacing: 16) {
                        Image(.info)
                        
                        Button(action: {
                            viewModel.changeFavorite(by: item.id)
                        }) {
                            Image(item.isFavorite ? .selectedHeart : .heart)
                        }
                        .buttonStyle(PlainButtonStyle())
                    }
                    .padding(.all, 8)
                    .background(Resources.Colors.whiteBg)
                    .clipShape(Capsule())
                }
            }
        }
    }
}
