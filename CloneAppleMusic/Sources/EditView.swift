//
//  EditView.swift
//  CloneAppleMusic
//
//  Created by  Alexey on 18.06.2024.
//

import SwiftUI

struct EditView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @State private var mediaLists = MediaList.getData()
    
    var body: some View {
        VStack {
            List {
                ForEach(mediaLists) { item in
                    MediaCellView(isChecked: item.isCheched, textValue: item.value, image: item.imageName)
                        .frame(maxHeight: .infinity)
                }
                .onMove(perform: move)
            }
            
            
        }
        .navigationBarTitle("Медиатика")
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: EmptyView(), trailing: HStack {
            Spacer()
            Button(action: {
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                    self.presentationMode.wrappedValue.dismiss()
                }
            }) {
                Text("Готова")
            }
        })
    }
    
    private func move(from source: IndexSet, to destination: Int) {
        mediaLists.move(fromOffsets: source, toOffset: destination)
    }
    
}

#Preview {
    EditView()
}
