//
//  SecondScreen.swift
//  DZ №1
//
//  Created by Egor Malyshev on 05.09.2021.
//

import SwiftUI

struct SecondScreen: View {
    
    let items = [CustomListItem(name: "1st item"),
                 CustomListItem(name: "2nd item"),
                 CustomListItem(name: "3rd item"),
                 CustomListItem(name: "4th item"),
                 CustomListItem(name: "5th item"),
                 CustomListItem(name: "6th item"),
                 CustomListItem(name: "7th item"),
                 CustomListItem(name: "8th item"),
                 CustomListItem(name: "9th item"),
                 CustomListItem(name: "10th item")]
    
    var body: some View {
        NavigationView {
            List(items) { item in
                NavigationLink(
                    destination: Text(item.name),
                    label: {
                        Text(item.name)
                    })
            }
            .navigationTitle("Menu")
        }
    }
}
