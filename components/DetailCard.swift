//
//  DetailCard.swift
//  astro
//
//  Created by Felipe Moreira on 3/5/24.
//

import SwiftUI

struct DetailCard: View {
    var title: String
    var detail: String
    

    var body: some View {
   
        HStack() {
            Text(title)
            Spacer()
            Text(detail)

        }
        .font(.caption)
        .frame(height: 15)
        
        
    
  

     
        
    }
}



#Preview {
    DetailCard(title: "Orbit", detail: "w.e")
}

