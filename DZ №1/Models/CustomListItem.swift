//
//  CustomListItem.swift
//  DZ №1
//
//  Created by Egor Malyshev on 07.09.2021.
//

import Foundation
import SwiftUI

struct CustomListItem: Identifiable {
    var id = UUID().uuidString
    var name: String
}

struct CustomListRow: View {
        
    var item: CustomListItem
    
    var body: some View {
        Text(item.name)
    }
    
}
