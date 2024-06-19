//
//  BottomVerticalView.swift
//  CloneAppleMusic
//
//  Created by  Alexey on 18.06.2024.
//

import SwiftUI

struct BottomVerticalView: View {
    
    let columns = [
        GridItem(.flexible())
    ]
    
    private var stationList = StationList.getStationData()
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            LazyVGrid(columns: columns) {
                ForEach(stationList) { item in
                    StationCell(image: item.image, title: item.title, subtitle: item.subTitle)
                }
            }
            Spacer().frame(height: 120)
        }
    }
}

#Preview {
    BottomVerticalView()
}
