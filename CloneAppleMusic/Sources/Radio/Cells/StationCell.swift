//
//  StationCell.swift
//  CloneAppleMusic
//
//  Created by  Alexey on 19.06.2024.
//

import SwiftUI

struct StationCell: View {
    
    var image: String = "radio_station_1_image"
    var title: String = "Радио Волна"
    var subtitle: String = "Ваш ритм дня и ночи"
    
    var body: some View {
        VStack {
            HStack {
                Image(image)
                    .resizable()
                    .frame(width: 150, height: 100)
                    .aspectRatio(contentMode: .fit)
                    .padding(.trailing, 10)
                VStack {
                    Text(title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text(subtitle)
                        .font(.system(size: 14))
                        .foregroundStyle(Color(UIColor.systemGray))
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
            }
            
            Divider().padding(.leading, 170)
        }
        
    }
}

#Preview {
    StationCell()
}
