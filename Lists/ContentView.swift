//
//  ContentView.swift
//  Lists
//
//  Created by Javier Fernández on 11/05/2020.
//  Copyright © 2020 Silversun Studio. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var categories = [
        Category(name: "Animals", image: "animals", feature: true),
        Category(name: "Recipes", image: "recipes", feature: true),
        Category(name: "Games", image: "games", feature: true),
        Category(name: "Developed", image: "dev", feature: true),
        Category(name: "Fashion", image: "fashion"),
        Category(name: "Pictures", image: "pictures"),
        Category(name: "Cars", image: "cars"),
        Category(name: "Fitness", image: "sport"),
        Category(name: "Events", image: "events")
    ]
    
    var body: some View {
        NavigationView {
            List {
                ScrollView(.horizontal) {
                    HStack(spacing: 15) {
                        ForEach(categories) { category in
                            NavigationLink(destination: CategoryDetailView(category: category)) {
                                if category.feature {
                                    CardFullImage(category: category)
                                }
                            }
                        }
                    }.padding()
                }.frame(height: 250)
                ForEach(categories) { category in
                    if !category.feature {
                        NavigationLink(destination: CategoryDetailView(category: category)) {
                            CardHorizontalDetail(category: category)
                        }
                    }
                }
            }
            .navigationBarTitle("Categories")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
