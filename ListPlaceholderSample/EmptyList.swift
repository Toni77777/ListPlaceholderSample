//
//  EmptyList.swift
//  ListPlaceholderSample
//
//  Created by Anton Paliakou on 7/7/21.
//

import SwiftUI

struct EmptyList<Items: RandomAccessCollection, ListRowView: View, PlaceholderView: View>: View where Items.Element: Identifiable {
    
    private var items: Items
    private var listRowView: (Items.Element) -> ListRowView
    private let placeholderView: () -> PlaceholderView
    
    /// - Parameters:
    ///   - items: Source data for List. Item must implement Identifiable protocol
    ///   - listRowView: View displayed for each source Item
    ///   - placeholderView: Placeholder. View displayed when the items collection is empty
    init(_ items: Items,
         @ViewBuilder listRowView: @escaping (Items.Element) -> ListRowView,
         @ViewBuilder placeholderView: @escaping () -> PlaceholderView) {
        self.items = items
        self.listRowView = listRowView
        self.placeholderView = placeholderView
    }
    
    var body: some View {
        if !items.isEmpty {
            List {
                ForEach(items) { item in
                    self.listRowView(item)
                }
            }
        } else {
            placeholderView()
        }
    }
}
