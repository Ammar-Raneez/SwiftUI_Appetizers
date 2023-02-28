//
//  OrderView.swift
//  Appetizers
//
//  Created by Ammar on 2023-02-27.
//

import SwiftUI

struct OrderView: View {
    @State private var orders = MockData.orders
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    List {
                        ForEach(orders) { order in
                            AppetizerListCell(appetizer: order)
                        }
                        .onDelete(perform: deleteItems)
                    }
                    .listStyle(.plain)
                    
                    Button {
                        print("Order placed")
                    } label: {
                        APButton(title: "$99.99 - Place order")
                    }
                    .padding(.bottom, 25)
                }
                
                if orders.isEmpty {
                    EmptyState(imageName: "empty-order", message: "You have no items in your order.\nPlease add an appetizer!")
                }
            }
            .navigationTitle("Orders")
        }
    }
    
    func deleteItems(at offsets: IndexSet) {
        orders.remove(atOffsets: offsets)
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}
