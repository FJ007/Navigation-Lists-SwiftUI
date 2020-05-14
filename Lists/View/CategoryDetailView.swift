//
//  CategoryDetailView.swift
//  Lists
//
//  Created by Javier Fernández on 12/05/2020.
//  Copyright © 2020 Silversun Studio. All rights reserved.
//

import SwiftUI

struct CategoryDetailView: View {
    var category: Category
    var body: some View {
        ScrollView {
            VStack{
                Image(category.image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 300)
                    .clipped()
                Text(category.description)
                    .font(.system(.body))
                    .multilineTextAlignment(.leading)
                    .frame(width: 350)
                    .padding()
            }
        }
        .navigationBarTitle(Text(category.name), displayMode: .automatic)
    }
}


// MARK: - Preview
struct CategoryDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryDetailView(category: CategoyFactory.categories[5])
    }
}
