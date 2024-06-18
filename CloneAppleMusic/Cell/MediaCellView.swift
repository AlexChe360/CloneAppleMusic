//
//  MediaCellView.swift
//  CloneAppleMusic
//
//  Created by  Alexey on 18.06.2024.
//

import SwiftUI

struct MediaCellView: View {
    
    @State var isChecked = false
    @State var textValue: String = "Плейлист"
    @State var image: String = "music.note.list"
    
    var body: some View {
        HStack {
            CircularCheckbox(isChecked: $isChecked)
                .padding(.trailing, 10)
            Image(systemName: image)
                .resizable()
                .frame(width: 20, height: 20)
                .aspectRatio(contentMode: .fit)
                .foregroundStyle(.red)
                .padding(.trailing, 10)
            Text(textValue)
            Spacer()
            Image(systemName: "line.3.horizontal")
                .resizable()
                .frame(width: 25, height: 15)
                .aspectRatio(contentMode: .fit)
                .foregroundStyle(Color(UIColor.systemGray2))
        }
        .padding()
        .frame(height: 40) 
    }
}

struct CircularCheckbox: View {
    @Binding var isChecked: Bool

    var body: some View {
        Button(action: {
            isChecked.toggle()
        }) {
            ZStack {
                Circle()
                    .stroke(Color.red, lineWidth: 2)
                    .frame(width: 24, height: 24)

                if isChecked {
                    ZStack {
                        Circle()
                            .stroke(Color.red, lineWidth: 2)
                            .fill(Color.red)
                            .frame(width: 24, height: 24)
                        Image(systemName: "checkmark")
                            .foregroundStyle(.white)
                    }
                    
                }
            }
        }
    }
}

#Preview {
    MediaCellView()
}
