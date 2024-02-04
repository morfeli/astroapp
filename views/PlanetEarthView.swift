//
//  DailyPictureView.swift
//  astro
//
//  Created by Felipe Moreira on 1/28/24.
//

import SwiftUI


struct PlanetEarthView: View {
    var body: some View {
        
            VStack {
                
                    Text("Earth view")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                
            }
            .navigationBarTitle("First View")
        }
    
}


struct PlanetEarthView_Previews: PreviewProvider {
    static var previews: some View {
        PlanetEarthView()
    }
}
