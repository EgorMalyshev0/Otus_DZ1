//
//  FirstScreen.swift
//  DZ №1
//
//  Created by Egor Malyshev on 29.08.2021.
//

import SwiftUI

struct FirstScreen: View {
    
    @EnvironmentObject var router: Router
    
    var body: some View {
        Button(action: {
            router.selection = 1
        }, label: {
            Text("Show 2nd tab")
        })
    }
}
