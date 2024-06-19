//
//  StationList.swift
//  CloneAppleMusic
//
//  Created by  Alexey on 19.06.2024.
//

import Foundation

struct StationList: Identifiable {
    let id = UUID()
    let image: String
    let title: String
    let subTitle: String
}

extension StationList {
    static func getStationData() -> [StationList] {
        return [
            StationList(image: "radio_station_1_image", title: "Радио Волна", subTitle: "Ваш ритм дня и ночи"),
            StationList(image: "radio_station_2_image", title: "Голос Города", subTitle: "Новости, Музыка и Эмоции"),
            StationList(image: "radio_station_3_image", title: "Музыка без Границ", subTitle: "Хиты и новинки каждый час"),
            StationList(image: "radio_station_4_image", title: "Радио Энергия", subTitle: "Заряжайся позитивом каждый день"),
            StationList(image: "radio_station_5_image", title: "Эфир FM", subTitle: "Звучим с вами всегда")
        ]
    }
}
