//
//  TopHorizontalView.swift
//  CloneAppleMusic
//
//  Created by  Alexey on 18.06.2024.
//

import SwiftUI

struct TopHorizontalView: View {
    
    let rows = [
        GridItem(.flexible(minimum: 50, maximum: 290))
    ]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: rows) {
                ForEach(0..<10) { index in
                    HorizontalCell()
                }
            }
        }
    }
}

#Preview {
    TopHorizontalView()
}
