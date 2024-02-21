//
//  ViewTitle.swift
//  astro
//
//  Created by Felipe Moreira on 2/2/24.
//

import SwiftUI

struct ViewTitle: View {
    var text = ""

    var body: some View {
        Text(text)
            .kerning(1)
            .font(.title2)
            .foregroundColor(.white)
            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    ViewTitle()
}
