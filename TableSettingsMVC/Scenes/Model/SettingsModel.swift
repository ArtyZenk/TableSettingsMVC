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
    let label: String?
    let icon: UIImage?
    let iconBackgroundColor: UIColor
    var isSwitch: Bool
}

final class SettingsModel {
    
    func createOptions() -> [Section] {
            [
            Section(title: "", option: [
                SettingsCellOption(title: "Авиарежим", label: nil, icon: UIImage(systemName: "airplane"), iconBackgroundColor: .systemOrange, isSwitch: true),
                SettingsCellOption(title: "Wi-Fi", label: "Не подключено", icon: UIImage(systemName: "wifi"), iconBackgroundColor: .systemBlue, isSwitch: false),
                SettingsCellOption(title: "Bluetooth", label: "Вкл.", icon: UIImage(systemName: "bonjour"), iconBackgroundColor: .systemBlue, isSwitch: false),
                SettingsCellOption(title: "Сотовая связь", label: nil, icon: UIImage(systemName: "antenna.radiowaves.left.and.right"), iconBackgroundColor: .systemGreen, isSwitch: false),
                SettingsCellOption(title: "Режим модема", label: nil, icon: UIImage(systemName: "personalhotspot"), iconBackgroundColor: .systemGreen, isSwitch: false),
                SettingsCellOption(title: "VPN", label: nil, icon: UIImage(systemName: "network"), iconBackgroundColor: .systemBlue, isSwitch: true)
            ]),
            
            Section(title: "", option: [
                SettingsCellOption(title: "Уведомления", label: nil, icon: UIImage(systemName: "app.badge"), iconBackgroundColor: .systemRed, isSwitch: false),
                SettingsCellOption(title: "Звуки, тактильные сигналы", label: nil, icon: UIImage(systemName: "volume.3.fill"), iconBackgroundColor: .systemPink, isSwitch: false),
                SettingsCellOption(title: "Не беспокоить", label: nil, icon: UIImage(systemName: "moon.fill"), iconBackgroundColor: .systemPurple, isSwitch: false),
                SettingsCellOption(title: "Экранное время", label: nil, icon: UIImage(systemName: "hourglass"), iconBackgroundColor: .systemPurple, isSwitch: false)
            ]),
            
            Section(title: "", option: [
                SettingsCellOption(title: "Основные", label: nil, icon: UIImage(systemName: "gear"), iconBackgroundColor: .systemGray, isSwitch: false),
                SettingsCellOption(title: "Пункт управления", label: nil, icon: UIImage(systemName: "switch.2"), iconBackgroundColor: .systemGray, isSwitch: false),
                SettingsCellOption(title: "Экран и яркость", label: nil, icon: UIImage(systemName: "textformat.size"), iconBackgroundColor: .systemBlue, isSwitch: false),
                SettingsCellOption(title: "Экран \"Домой\"", label: nil, icon: UIImage(systemName: "apps.iphone"), iconBackgroundColor: .purple, isSwitch: false),
                SettingsCellOption(title: "Универсальный доступ", label: nil, icon: UIImage(systemName: "hourglass"), iconBackgroundColor: .systemBlue, isSwitch: false)
            ])
        ]
    }
}
