//
//  ThirdScreen.swift
//  DZ №1
//
//  Created by Egor Malyshev on 05.09.2021.
//

import SwiftUI

struct ThirdScreen: View {
    
    @State private var isModal = false
    
    var body: some View {
        Button("TapMe") {
            isModal = true
        }
        .font(.title)
        .foregroundColor(.white)
        .padding()
        .background(Color.blue)
        .sheet(isPresented: $isModal) {
            ModalScreen(isPresented: $isModal)
        }
    }
}
