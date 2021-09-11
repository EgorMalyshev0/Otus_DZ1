//
//  Router.swift
//  DZ №1
//
//  Created by Egor Malyshev on 06.09.2021.
//

import SwiftUI

final class Router: ObservableObject {
    
    @Published var selection: Int = 0
    
    @Published var isActive: Bool = false
    
}
