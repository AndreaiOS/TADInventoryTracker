//
//  InventoryListVM.swift
//  TADInventoryTracker
//
//  Created by Andrea Murru on 23/11/2023.
//

import Foundation
import SwiftUI
import FirebaseFirestore

class InventoryListViewModel: ObservableObject {
    @Published var items = [InventoryItem]()
    
    @MainActor
    func listenToItems() {
        Firestore.firestore().collection("items")
            .order(by: "name")
            .limit(toLast: 100)
            .addSnapshotListener { snapshot, error in
                guard let snapshot else {
                    return
                }
                let docs = snapshot.documents
                let items = docs.compactMap {
                    try? $0.data(as: InventoryItem.self)
                }
                
                withAnimation {
                    self.items = items
                }
            }
    }
}
