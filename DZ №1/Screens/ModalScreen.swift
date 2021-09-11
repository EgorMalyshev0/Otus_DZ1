//
//  ModalScreen.swift
//  DZ №1
//
//  Created by Egor Malyshev on 06.09.2021.
//

import SwiftUI

struct ModalScreen: View {
    
    @Binding var isPresented: Bool
    
    var body: some View {
        VStack {
            Text("I'm modal!")
            Button("Press to dismiss") {
                isPresented = false
            }
        }
    }
}
