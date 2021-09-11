//
//  FirstScreen.swift
//  DZ №1
//
//  Created by Egor Malyshev on 29.08.2021.
//

import SwiftUI

struct FirstScreen: View {
    
    @EnvironmentObject var router: Router
    
    @State private var selection: Int = 1
    
    var body: some View {
        VStack {
            Button(action: {
                router.isActive = true
                router.selection = 1
            }, label: {
                Text("Show 2nd tab")
            })
            .padding()
            Text("Choose which row to open:")
            CustomPickerView()
        }
    }
}
