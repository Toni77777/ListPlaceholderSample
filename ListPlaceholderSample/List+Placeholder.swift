//
//  List+Placeholder.swift
//  ListPlaceholderSample
//
//  Created by Anton Paliakou on 6/16/21.
//

import SwiftUI

extension List {
    
    func emptyListPlaceholder(_ items: [Any]) -> some View {
        modifier(EmptyDataModifier(items: items))
    }
}
