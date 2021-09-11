//
//  CustomPickerView.swift
//  DZ №1
//
//  Created by Egor Malyshev on 08.09.2021.
//

import SwiftUI
import UIKit

struct CustomPickerView: UIViewRepresentable {
        
    @EnvironmentObject var router: Router
    
    var pickerData: [Int] = Array(1...10)
    
    func makeCoordinator() -> CustomPickerView.Coordinator {
        return CustomPickerView.Coordinator(self)
    }
    
    func makeUIView(context: UIViewRepresentableContext<CustomPickerView>) -> UIPickerView {
        let picker = UIPickerView(frame: .zero)
        picker.dataSource = context.coordinator
        picker.delegate = context.coordinator
        return picker
    }
    
    func updateUIView(_ view: UIPickerView, context: UIViewRepresentableContext<CustomPickerView>) {}
    
    class Coordinator: NSObject, UIPickerViewDataSource, UIPickerViewDelegate {
        
        var parent: CustomPickerView
        
        init(_ pickerView: CustomPickerView) {
            self.parent = pickerView
        }
        
        func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {

        }
        
        func numberOfComponents(in pickerView: UIPickerView) -> Int {
            1
        }
        
        func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
            parent.pickerData.count
        }
        
        func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
            parent.pickerData[row].description
        }
    }
}
