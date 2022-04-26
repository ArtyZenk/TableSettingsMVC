//
//  SettingsModel.swift
//  TableSettingsMVC
//
//  Created by Artyom Guzenko on 26.04.2022.
//

import UIKit

final class SettingsModel {
    
    func createOptions() -> [Section] {
        
        let wifiNames = ["pipax", "Guest-WiFi", "SosediPNH", "home-wifi", "MTS-accessPoint", "Не подключено"]
        
        return [
            
            //  First section
            Section(title: "", option: [
                SettingsCellOption(title: "Авиарежим", additionLabel: nil, icon: UIImage(systemName: "airplane"), iconBackgroundColor: .systemOrange, isSwitchButton: true),
                SettingsCellOption(title: "Wi-Fi", additionLabel: wifiNames[Int.random(in: 0..<wifiNames.count)], icon: UIImage(systemName: "wifi"), iconBackgroundColor: .systemBlue, isSwitchButton: false),
                SettingsCellOption(title: "Bluetooth", additionLabel: "Вкл.", icon: UIImage(systemName: "iphone.homebutton.radiowaves.left.and.right"), iconBackgroundColor: .systemBlue, isSwitchButton: false),
                SettingsCellOption(title: "Сотовая связь", additionLabel: nil, icon: UIImage(systemName: "antenna.radiowaves.left.and.right"), iconBackgroundColor: .systemGreen, isSwitchButton: false),
                SettingsCellOption(title: "Режим модема", additionLabel: nil, icon: UIImage(systemName: "personalhotspot"), iconBackgroundColor: .systemGreen, isSwitchButton: false),
                SettingsCellOption(title: "VPN", additionLabel: nil, icon: UIImage(systemName: "personalhotspot"), iconBackgroundColor: .systemBlue, isSwitchButton: true)
            ]),
            
            //  Second section
            Section(title: "", option: [
                SettingsCellOption(title: "Уведомления", additionLabel: nil, icon: UIImage(systemName: "app.badge"), iconBackgroundColor: .systemRed, isSwitchButton: false),
                SettingsCellOption(title: "Звуки, тактильные сигналы", additionLabel: nil, icon: UIImage(systemName: "volume.3.fill"), iconBackgroundColor: .systemPink, isSwitchButton: false),
                SettingsCellOption(title: "Не беспокоить", additionLabel: nil, icon: UIImage(systemName: "moon.fill"), iconBackgroundColor: #colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1), isSwitchButton: false),
                SettingsCellOption(title: "Экранное время", additionLabel: nil, icon: UIImage(systemName: "hourglass"), iconBackgroundColor: #colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1), isSwitchButton: false)
            ]),
            
            //  Third section
            Section(title: "", option: [
                SettingsCellOption(title: "Основные", additionLabel: nil, icon: UIImage(systemName: "gear"), iconBackgroundColor: .systemGray, isSwitchButton: false),
                SettingsCellOption(title: "Пункт управления", additionLabel: nil, icon: UIImage(systemName: "house"), iconBackgroundColor: .systemGray, isSwitchButton: false),
                SettingsCellOption(title: "Экран и яркость", additionLabel: nil, icon: UIImage(systemName: "textformat.size"), iconBackgroundColor: .systemBlue, isSwitchButton: false),
                SettingsCellOption(title: "Экран \"Домой\"", additionLabel: nil, icon: UIImage(systemName: "moon.fill"), iconBackgroundColor: .purple, isSwitchButton: false),
                SettingsCellOption(title: "Универсальный доступ", additionLabel: nil, icon: UIImage(systemName: "hourglass"), iconBackgroundColor: .systemBlue, isSwitchButton: false)
            ])
        ]
    }
}
