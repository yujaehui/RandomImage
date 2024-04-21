//
//  RandomImageDetailView.swift
//  RandomImage
//
//  Created by Jaehui Yu on 4/21/24.
//

import SwiftUI

struct RandomImageDetailView: View {
    @Binding var selectImage: Image
    @Binding var sectionTitle: String
    
    var body: some View {
        VStack {
            selectImage
                .resizable()
                .scaledToFill()
                .frame(width: 100, height: 150)
                .clipShape(.buttonBorder)
            TextField("변경하실 섹션 이름을 입력하세요.", text: $sectionTitle)
                .padding()
        }
    }
}
