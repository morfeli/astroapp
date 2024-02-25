//
//  MoonDetailView.swift
//  astro
//
//  Created by Felipe Moreira on 2/22/24.
//

import SwiftUI

struct MoonDetailView: View {
    let moon: Moon
      
      init(moon: Moon) {
          self.moon = moon
      }
    
    var body: some View {
        Text(moon.name)
    }
}

