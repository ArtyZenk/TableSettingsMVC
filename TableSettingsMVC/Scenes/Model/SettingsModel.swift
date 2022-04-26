//
//  SettingsModel.swift
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

final class SettingsModel {
    
    func createOptions() -> [Section] {
            [
            Section(title: "", option: [
                SettingsCellOption(title: "Авиарежим", additionLabel: nil, icon: UIImage(systemName: "airplane"), iconBackgroundColor: .systemOrange, isSwitchButton: true),
                SettingsCellOption(title: "Wi-Fi", additionLabel: "Не подключено", icon: UIImage(systemName: "wifi"), iconBackgroundColor: .systemBlue, isSwitchButton: false),
                SettingsCellOption(title: "Bluetooth", additionLabel: "Вкл.", icon: UIImage(systemName: "bonjour"), iconBackgroundColor: .systemBlue, isSwitchButton: false),
                SettingsCellOption(title: "Сотовая связь", additionLabel: nil, icon: UIImage(systemName: "antenna.radiowaves.left.and.right"), iconBackgroundColor: .systemGreen, isSwitchButton: false),
                SettingsCellOption(title: "Режим модема", additionLabel: nil, icon: UIImage(systemName: "personalhotspot"), iconBackgroundColor: .systemGreen, isSwitchButton: false),
                SettingsCellOption(title: "VPN", additionLabel: nil, icon: UIImage(systemName: "network"), iconBackgroundColor: .systemBlue, isSwitchButton: true)
            ]),
            
            Section(title: "", option: [
                SettingsCellOption(title: "Уведомления", additionLabel: nil, icon: UIImage(systemName: "app.badge"), iconBackgroundColor: .systemRed, isSwitchButton: false),
                SettingsCellOption(title: "Звуки, тактильные сигналы", additionLabel: nil, icon: UIImage(systemName: "volume.3.fill"), iconBackgroundColor: .systemPink, isSwitchButton: false),
                SettingsCellOption(title: "Не беспокоить", additionLabel: nil, icon: UIImage(systemName: "moon.fill"), iconBackgroundColor: .systemPurple, isSwitchButton: false),
                SettingsCellOption(title: "Экранное время", additionLabel: nil, icon: UIImage(systemName: "hourglass"), iconBackgroundColor: .systemPurple, isSwitchButton: false)
            ]),
            
            Section(title: "", option: [
                SettingsCellOption(title: "Основные", additionLabel: nil, icon: UIImage(systemName: "gear"), iconBackgroundColor: .systemGray, isSwitchButton: false),
                SettingsCellOption(title: "Пункт управления", additionLabel: nil, icon: UIImage(systemName: "switch.2"), iconBackgroundColor: .systemGray, isSwitchButton: false),
                SettingsCellOption(title: "Экран и яркость", additionLabel: nil, icon: UIImage(systemName: "textformat.size"), iconBackgroundColor: .systemBlue, isSwitchButton: false),
                SettingsCellOption(title: "Экран \"Домой\"", additionLabel: nil, icon: UIImage(systemName: "apps.iphone"), iconBackgroundColor: .purple, isSwitchButton: false),
                SettingsCellOption(title: "Универсальный доступ", additionLabel: nil, icon: UIImage(systemName: "hourglass"), iconBackgroundColor: .systemBlue, isSwitchButton: false)
            ])
        ]
    }
}
