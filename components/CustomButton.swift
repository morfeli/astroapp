//
//  CustomButton.swift
//  astro
//
//  Created by Felipe Moreira on 2/2/24.
//

import SwiftUI

struct CustomButton: View {
    var action: (String) -> Void
    var label = "Text"
    @Binding var activeButton: String

    var body: some View {
        Button(action: {
        action(label)
        }) {
            Text(label)
        }
        .padding()
        .frame(width: .infinity, height: 38)
        .background(label == activeButton ? Color.gray : Color.blue) // Change the background color when pressed
        .foregroundColor(.white)
        .cornerRadius(10)
        
    }
}

struct CustomButton_Previews: PreviewProvider {
    static var previews: some View {
        CustomButton(action: { _ in }, activeButton: .constant("Planets"))
    }
}
