//
//  CoverImageView.swift
//  Africa
//
//  Created by omer sanli on 13.01.2022.
//

import SwiftUI

struct CoverImageView: View {
    // MARK: PROPERTIES
    let coverImages: [CoverImage] = Bundle.main.decode("covers.json")
    
    //MARK: BODY
    var body: some View {
        TabView {
            ForEach(coverImages) { item in
                Image(item.name)
                    .resizable()
                    .scaledToFill()
            }// END OF FOREACH
        }// END OF TABVIEW
        .tabViewStyle(PageTabViewStyle())
    }
}

// MARK: BODY

struct CoverImageView_Previews: PreviewProvider {
    static var previews: some View {
        CoverImageView()
            .previewLayout(.fixed(width: 400, height: 300))
    }
}
