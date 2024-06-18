//
//  MediaList.swift
//  CloneAppleMusic
//
//  Created by  Alexey on 18.06.2024.
//

import Foundation

struct MediaList: Identifiable {
    let id = UUID()
    let value: String
    let imageName: String
    let isCheched: Bool
}

extension MediaList {
    static func getData() -> [MediaList] {
        return [
            MediaList(value: "Плейлисты", imageName: "music.note.list", isCheched: false),
            MediaList(value: "Артисты", imageName: "music.mic", isCheched: true),
            MediaList(value: "Альбомы", imageName: "square.stack", isCheched: false),
            MediaList(value: "Песни", imageName: "music.note", isCheched: false),
            MediaList(value: "Фильмы и сериалы", imageName: "tv", isCheched: false),
            MediaList(value: "Видеоклипы", imageName: "music.note.tv", isCheched: false),
            MediaList(value: "Жанры", imageName: "guitars", isCheched: false),
            MediaList(value: "Сборки", imageName: "rectangle.stack.badge.person.crop", isCheched: false),
            MediaList(value: "Авторы", imageName: "music.quarternote.3", isCheched: false),
            MediaList(value: "Загруженные", imageName: "arrow.down.circle", isCheched: false),
            MediaList(value: "Домашняя коллекция", imageName: "music.note.house", isCheched: false),
        ]
    }
}
