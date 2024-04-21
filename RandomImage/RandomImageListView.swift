//
//  RandomImageListView.swift
//  RandomImage
//
//  Created by Jaehui Yu on 4/21/24.
//

import SwiftUI

struct RandomImageListView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVStack(alignment: .leading) {
                    RandomImageSectionView(sectionTitle: "첫 번째 섹션")
                    RandomImageSectionView(sectionTitle: "두 번째 섹션")
                    RandomImageSectionView(sectionTitle: "세 번째 섹션")
                }
            }
            .navigationTitle("Random Image")
        }
    }
}

#Preview {
    RandomImageListView()
}
