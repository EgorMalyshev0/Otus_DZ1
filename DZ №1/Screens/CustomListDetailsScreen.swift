//
//  CustomListDetailsScreen.swift
//  DZ №1
//
//  Created by Egor Malyshev on 11.09.2021.
//

import SwiftUI

struct CustomListDetailsScreen: View {
    
    @Binding var isActive: Bool
    
    var body: some View {
        Button("Press to dismiss") {
            isActive = false
        }
    }
}
