//
//  ModelStructure.swift
//  TableSettingsMVC
//
//  Created by Artyom Guzenko on 26.04.2022.
//

import UIKit

struct Section {
    let title: String
    let option: [SettingsCellOption]
}

struct SettingsCellOption {
    let title: String
    let additionLabel: String?
    let icon: UIImage?
    let iconBackgroundColor: UIColor
    var isSwitchButton: Bool
}
