//
//  ContentView.swift
//  DZ №1
//
//  Created by Egor Malyshev on 29.08.2021.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var router: Router

    var body: some View {
        TabView(selection: $router.selection) {
            FirstScreen()
                .tabItem {
                    Text("First")
                    Image(systemName: "1.circle")
                }
                .tag(0)
            SecondScreen()
                .tabItem {
                    Text("Second")
                    Image(systemName: "2.circle")
                }
                .tag(1)
            ThirdScreen()
                .tabItem {
                    Text("Third")
                    Image(systemName: "3.circle")
                }
                .tag(2)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
