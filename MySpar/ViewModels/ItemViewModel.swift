//
//  ItemViewModel.swift
//  MySpar
//
//  Created by Denis on 8/7/24.
//

import Combine

final class ItemViewModel: ObservableObject {
    @Published var items: [Item] = []
    
    private let dataStore = DataStoreManager.shared
    
    func fetchItems() {
        items = dataStore.receiveItems()
    }
    
    func changeFavorite(by id: Int) {
        items.indices.forEach {
            if items[$0].id == id {
                items[$0].isFavorite.toggle()
            }
        }
    }
}
