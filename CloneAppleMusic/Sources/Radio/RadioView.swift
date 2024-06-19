//
//  RadioView.swift
//  CloneAppleMusic
//
//  Created by  Alexey on 18.06.2024.
//

import SwiftUI

struct RadioView: View {
    var body: some View {
        NavigationView {
            
            ScrollView(.vertical, showsIndicators: false) {
                Divider()
                TopHorizontalView()
                Divider()
                Text("Станции")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.system(size: 18, weight: .bold))
                BottomVerticalView()
            }
            .padding()
            .navigationTitle("Радио")
        }
    }
}

#Preview {
    RadioView()
}
