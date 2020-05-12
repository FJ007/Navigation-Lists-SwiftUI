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
                    .edgesIgnoringSafeArea(.top)
                    .aspectRatio(contentMode: .fit)
                Text(category.name)
                    .font(.system(.title, design: .rounded))
                    .bold()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                ScrollView{
                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin aliquam ex ut nibh fermentum, eget porta lorem hendrerit. In eleifend magna eu ornare volutpat. In blandit elit vitae neque dignissim aliquam. Nulla feugiat nec velit vel imperdiet. Curabitur eleifend gravida nunc, vel aliquam lacus dictum id. In maximus felis in sollicitudin imperdiet. Phasellus faucibus eleifend leo et venenatis. Cras tempus, augue nec molestie tincidunt, nisi nisi vehicula nisi, id semper tortor dui sed nisi. "
                    ).padding(.horizontal)
                }
            }
        }
        
    }
}

struct CategoryDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryDetailView(category: Category(name: "Animals", image: "animals"))
    }
}
