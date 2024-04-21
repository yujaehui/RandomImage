//
//  RandomImageView.swift
//  RandomImage
//
//  Created by Jaehui Yu on 4/21/24.
//

import SwiftUI

struct RandomImageView: View {
    var url = URL(string: "https://picsum.photos/200/300")!
    @State private var selectImage: Image = Image(systemName: "photo")
    @Binding var sectionTitle: String
    
    var body: some View {
        NavigationLink {
            RandomImageDetailView(selectImage: $selectImage, sectionTitle: $sectionTitle)
        } label: {
            AsyncImage(url: url) { data in
                switch data {
                case .empty:
                    ProgressView()
                        .frame(width: 100, height: 150)
                case .success(let image):
                    image
                        .resizable()
                        .scaledToFill()
                        .frame(width: 100, height: 150)
                        .clipShape(.buttonBorder)
                        .onAppear {
                            selectImage = image
                        }
                        
                case .failure( _):
                    Text("이미지를 불러오지 못했습니다.")
                @unknown default:
                    Text("...")
                }
            }
        }
    }
}
