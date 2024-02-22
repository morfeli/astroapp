//
//  HomeView.swift
//  astro
//
//  Created by Felipe Moreira on 1/23/24.
import SwiftUI
import SwiftData
import SwiftUIX

struct ScrollViewReachedBottomPreferenceKey: PreferenceKey {
    static var defaultValue: Bool = false
    static func reduce(value: inout Bool, nextValue: () -> Bool) {
        value = nextValue()
    }
}


struct HomeView: View {
    
    @State var activeButton: String = "Planets"
    @State var searchKey: String = ""
    
    func updateActiveButton(to newButton: String) {
        activeButton = newButton
    }
    
  
   
    var body: some View {
        
        
    
        NavigationView {
            VStack {
                VStack(alignment: .leading, spacing: 20) {
                    ViewTitle(text: "Explore the Universe")
                    
                    TextField(text: $searchKey)
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .padding(8)
                        .background(.white.opacity(0.4))
                        .cornerRadius(12)
                        .frame(width: 270)
                    
                        .overlay(
                            HStack() {
                                Text(searchKey.isEmpty ? "Search" : "")
                                    .foregroundColor(.white)
                                    .fontWeight(.bold)
                                    .padding(8)
                                Spacer()
                                Image(systemName: "sparkle.magnifyingglass")
                                    .padding(4)
                                    .background(.white)
                                    .clipShape(Circle())
                                    .padding(8)
                            }
                        )
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            CustomButton(action: updateActiveButton, label: "Planets", activeButton: $activeButton)
                            CustomButton(action: updateActiveButton, label: "Moons",  activeButton: $activeButton)
                            CustomButton(action: updateActiveButton, label: "Solar System",  activeButton: $activeButton)
                            CustomButton(action: updateActiveButton, label: "Galaxies",  activeButton: $activeButton)
                            CustomButton(action: updateActiveButton, label: "Universe",  activeButton: $activeButton)
                        }
                        //                        .background(RoundedRectangle(cornerRadius: 25.0).fill(.white.opacity(0.3)))
                    }
                }
                .padding(10)
                
                    ScrollView(showsIndicators: false) {
                        LazyVGrid(columns: [GridItem(.adaptive(minimum: 150))], spacing: 18) {
                            switch activeButton {
                            case "Planets":
                                PlanetsView()
                            case "Moons":
                                MoonsView()
                            case "Solar System":
                                SolarSystemView()
                            case "Galaxies":
                                GalaxiesView()
                            default:
                                PlanetsView()
                            }
                           
                        }
                    }
                    .mask(
                        LinearGradient(gradient: Gradient(colors: [Color.black, Color.black, Color.black, Color.black.opacity(0)]), startPoint: .top, endPoint: .bottom)
                    )
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
                
                
                
            }
            .zIndex(1)
        }
    }




#Preview {
    HomeView()
   
}


