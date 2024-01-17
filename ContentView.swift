//
//  ContentView.swift
//  astro
//
//  Created by Felipe Moreira on 1/16/24.
//

import SwiftUI

struct ContentView: View {
    @State var isPressed = false

    var body: some View {
        
        VStack(spacing: 250) {
                
            Text("AstroScape")
                .foregroundStyle(.white)
                .font(.largeTitle)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .textCase(/*@START_MENU_TOKEN@*/.uppercase/*@END_MENU_TOKEN@*/)
                .kerning(3)
            
            
            Text("Insert Logo Here")
                .foregroundStyle(.white)
            
            Button(action: {}) {
                Text("Start Exploring")
                    .bold()
            }
            .frame(maxWidth: 300)
            .padding(12)
            .background(LinearGradient(
                gradient: Gradient(colors: [.gray, .blue]),
                startPoint: .leading,
                endPoint: .trailing))
            .foregroundColor(.white)
            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            .cornerRadius(12)
            .shadow(color: .white.opacity(isPressed ? 0.5 : 0.2), radius: isPressed ? 10 : 5, x: 0, y: isPressed ? 5 : 10)
            .scaleEffect(isPressed ? 0.90 : 1.0)
            .animation(.spring(response: 0.4, dampingFraction: 0.6))
            .onTapGesture {
                isPressed = true
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                    isPressed = false
                }
            }
            
            
            
        }
        .background(Image("astro-wallpaper-4"))
        
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
