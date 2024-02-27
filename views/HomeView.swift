//
//  HomeView.swift
//  astro
//
//  Created by Felipe Moreira on 1/23/24.

import SwiftUI
import SwiftData
import SwiftUIX

struct HomeView: View {

    @State var activeButton: String = "Planets"
    @State var searchKey: String = ""
    
    func updateActiveButton(to newButton: String) {
        activeButton = newButton
    }
    
    @ViewBuilder
    func astroView() -> some View {
        switch activeButton {
        case "Planets":
            PlanetsView(searchKey: $searchKey)
        case "Moons":
            MoonsView(searchKey: $searchKey)
        case "Solar System":
            SolarSystemView(searchKey: $searchKey)
        case "Galaxies":
            GalaxiesView(searchKey: $searchKey)
        case "Universe":
           UniverseView(searchKey: $searchKey)
        default:
            PlanetsView(searchKey: $searchKey)
        }
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
            
                    }
                }
                .padding(10)
                    ScrollView(showsIndicators: false) {
                        LazyVGrid(columns: [GridItem(.adaptive(minimum: 150))], spacing: 18) {
                            astroView()
                        }
                    }
                    .mask(
                        LinearGradient(gradient: Gradient(colors: [Color.black, Color.black, Color.black, Color.black.opacity(0)]), startPoint: .top, endPoint: .bottom)
                    )
                    Spacer()
                }
                .background(Image("astro-wallpaper-6"))
            }
            .zIndex(1)
        }
    }

