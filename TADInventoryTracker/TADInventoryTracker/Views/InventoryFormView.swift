//
//  InventoryFormView.swift
//  TADInventoryTracker
//
//  Created by Andrea Murru on 24/11/2023.
//

import SwiftUI

struct InventoryFormView: View {
    @StateObject var vm = InventoryFormViewModel()
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    NavigationStack {
        InventoryFormView()
    }
}
