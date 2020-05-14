//
//  ContentView.swift
//  Lists
//
//  Created by Javier Fernández on 11/05/2020.
//  Copyright © 2020 Silversun Studio. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                ScrollView(.horizontal) {
                    HStack(spacing: 15) {
                        ForEach(CategoyFactory.categories) { category in
                            NavigationLink(destination: CategoryDetailView(category: category)) {
                                if category.feature {
                                    CellFullImageView(category: category)
                                }
                            }
                        }
                    }.padding()
                }.frame(height: 250)
                ForEach(CategoyFactory.categories) { category in
                    if !category.feature {
                        NavigationLink(destination: CategoryDetailView(category: category)) {
                            CellDefaultView(category: category)
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
