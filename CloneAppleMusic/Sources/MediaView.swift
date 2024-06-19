//
//  MediaView.swift
//  CloneAppleMusic
//
//  Created by  Alexey on 18.06.2024.
//

import SwiftUI

struct MediaView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Ищите свою музыку?")
                    .font(.system(size: 22, weight: .bold))
                Text("Здесь появится купленная Вами в \n iTunes Store музыка")
                    .multilineTextAlignment(.center)
                    .foregroundStyle(Color.gray)
            }
            .navigationTitle("Медиатика")
            .navigationBarItems(trailing: NavigationLink(
                destination: EditView(),
                label: {
                    Text("Править")
                        .foregroundStyle(.red)
                }))
        }
    }
}

#Preview {
    MediaView()
}
