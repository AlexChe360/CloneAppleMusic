//
//  HorizontalCell.swift
//  CloneAppleMusic
//
//  Created by  Alexey on 18.06.2024.
//

import SwiftUI

struct HorizontalCell: View {
    
    var title: String = "эксклюзив"
    var subTitle: String = "Коллекция радиошоу Beats 1"
    var imageName: String = "radio_1_image"
    
    var body: some View {
        VStack {
            Text(title)
                .font(.system(size: 16))
                .foregroundStyle(Color(UIColor.systemGray))
                .frame(maxWidth: .infinity, alignment: .leading)
            Text(subTitle)
                .frame(maxWidth: .infinity, alignment: .leading)
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
               
        }
    }
}

#Preview {
    HorizontalCell()
}
