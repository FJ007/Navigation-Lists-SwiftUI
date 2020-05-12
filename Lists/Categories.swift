//
//  Categories.swift
//  Lists
//
//  Created by Javier Fernández on 11/05/2020.
//  Copyright © 2020 Silversun Studio. All rights reserved.
//

import SwiftUI

struct Category: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var feature: Bool = false
}

struct Categories: View {
    
    let animalCategory = Category(name: "Animals", image: "animals")
    
    var body: some View {
        VStack {
            Text("Cell Sample")
                .font(.system(.largeTitle, design: .rounded))
                .bold()
                .underline()
            CardFullImage(category: animalCategory)
            .padding(30)
            CardHorizontalDetail(category: animalCategory)
        }
    }
}

struct Categories_Previews: PreviewProvider {
    static var previews: some View {
        Categories()
    }
}

struct CardFullImage: View {
    var category: Category
    var body: some View {
        ZStack {
            Image(category.image)
                .resizable()
                .frame(width: 280, height: 180)
                .aspectRatio(contentMode: .fill)
                .cornerRadius(20)
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .opacity(0.2)
                )
            Text(category.name)
                .font(.system(.largeTitle, design: .rounded))
                .fontWeight(.heavy)
                .foregroundColor(.white)
        }
    }
}

struct CardHorizontalDetail: View {
    var category: Category
    var body: some View {
        HStack {
            Image(category.image)
                .resizable()
                .frame(width: 60, height: 60)
                .aspectRatio(contentMode: .fill)
                .cornerRadius(40)
                .clipped()
            Text(category.name)
                .font(.system(.body, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.primary)
        }
    }
}
