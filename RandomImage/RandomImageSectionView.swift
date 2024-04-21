//
//  RandomImageSectionView.swift
//  RandomImage
//
//  Created by Jaehui Yu on 4/21/24.
//

import SwiftUI

struct RandomImageSectionView: View {    
    @State var sectionTitle: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(sectionTitle)
                .padding(.horizontal)
                .font(.title)
            ScrollView(.horizontal) {
                LazyHStack {
                    RandomImageView(sectionTitle: $sectionTitle)
                    RandomImageView(sectionTitle: $sectionTitle)
                    RandomImageView(sectionTitle: $sectionTitle)
                    RandomImageView(sectionTitle: $sectionTitle)
                    RandomImageView(sectionTitle: $sectionTitle)
                    RandomImageView(sectionTitle: $sectionTitle)

                }
                .padding(.horizontal)
            }
        }
    }
}
