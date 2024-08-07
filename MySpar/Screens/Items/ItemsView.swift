//
//  Items.swift
//  MySpar
//
//  Created by Denis on 8/7/24.
//

import SwiftUI

enum ItemCollectionType {
    case grid
    case list
}

struct ItemsView: View {
    @ObservedObject private var viewModel = ItemViewModel()
    @State private var collectionType: ItemCollectionType = .grid
    @State private var toolbarImage: ImageResource = .grid
    @State private var showBucket = false
    
    private let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        NavigationStack {
            VStack {
                Divider()
                
                switch collectionType {
                case .grid:
                    ScrollView {
                        LazyVGrid(columns: columns, spacing: 5) {
                            ForEach(viewModel.items, id: \.self) { item in
                                ItemCardView(item: item, type: collectionType)
                                    .frame(height: 278)
                                    .background(.white)
                                    .clipShape(
                                        RoundedRectangle(
                                            cornerRadius: 16
                                        )
                                    )
                                    .shadow(
                                        color: Resources.Colors.shadow,
                                        radius: 5
                                    )
                            }
                        }
                        .padding()
                    }
                case .list:
                    List {
                        ForEach(viewModel.items, id: \.self) { item in
                            ItemCardView(item: item, type: collectionType)
                                .frame(height: 176)
                                .background(.white)
                        }
                    }
                    .listStyle(PlainListStyle())
                }
            }
            .toolbar(content: {
                ToolbarItem(placement: .topBarLeading) {
                    Button(action: {
                        collectionType = collectionType == .grid ? .list : .grid
                        toolbarImage = toolbarImage == .grid ? .list : .grid
                    }) {
                        Image(toolbarImage)
                    }
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: {
                        showBucket.toggle()
                    }) {
                        Image(.bucket)
                            .padding(.all, 10)
                            .background(.green)
                            .clipShape(RoundedRectangle(cornerRadius: 12))
                    }
                    .sheet(isPresented: $showBucket) {
                        if !viewModel.items.filter({ $0.isFavorite }).isEmpty {
                            List {
                                ForEach(
                                    viewModel.items.filter { $0.isFavorite },
                                    id: \.self
                                ) { item in
                                    ItemCardView(item: item, type: .list)
                                        .frame(height: 176)
                                        .background(.white)
                                }
                            }
                            .padding(.top, 16)
                            .listStyle(PlainListStyle())
                        } else {
                            Text("Карзина пуста")
                        }
                    }
                }
            })
        }
        .environmentObject(viewModel)
        .onAppear(perform: {
            viewModel.fetchItems()
        })
    }
}
