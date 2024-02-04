//
//  HomeView.swift
//  astro
//
//  Created by Felipe Moreira on 1/23/24.

import SwiftUI
import SwiftUIX

struct HomeView: View {
    
    @State var activeButton = "Planets"
    
    func updateActiveButton(to newButton: String) {
            activeButton = newButton
        }
    
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    ViewTitle(text: "Explore the Universe")
                    

                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            CustomButton(action: updateActiveButton, label: "Planets", activeButton: $activeButton)
                            CustomButton(action: updateActiveButton, label: "Moons",  activeButton: $activeButton)
                            CustomButton(action: updateActiveButton, label: "Solar System",  activeButton: $activeButton)
                            CustomButton(action: updateActiveButton, label: "Universe",  activeButton: $activeButton)
                        }
//                        .background(RoundedRectangle(cornerRadius: 25.0).fill(.white.opacity(0.3)))
                        .padding(.top, 10)
                        .padding(.horizontal, 10)
                    }
                }
                
                
                Spacer()
                
                
            }
            .background(Image("astro-wallpaper-6"))
            .toolbar {
                ToolbarItemGroup(placement: .bottomBar) {
                    HStack(spacing: 60) {
                        NavigationLink(destination: PlanetEarthView(), label: {
                            Image(systemName: "globe.americas.fill")
                                .foregroundColor(.white)
                                .imageScale(.large)
                        })
                        NavigationLink(destination: DailyPhotoView(), label: {
                            Image(systemName: "photo.circle.fill")
                                .foregroundColor(.white)
                                .imageScale(.large)
                        })
                        NavigationLink(destination: HoroscopeView(), label: {
                            Image(systemName: "moon.stars.circle.fill")
                                .foregroundColor(.white)
                                .imageScale(.large)
                        })
                        NavigationLink(destination: FavoritesView(), label: {
                            Image(systemName: "star.circle.fill")
                                .foregroundColor(.white)
                                .imageScale(.large)
                        })
                    }
                    .background(RoundedRectangle(cornerRadius: 25.0).fill(.white.opacity(0.3)))
                    
                }
                
            }
        
            
            
        }.zIndex(1)
            .transition(.move(edge: .trailing))
            .animation(.easeInOut(duration: 0.5))
      
    }
    
   
}
#Preview {
    HomeView()
}


