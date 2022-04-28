//
//  Metric.swift
//  TableSettingsMVC
//
//  Created by Artyom Guzenko on 26.04.2022.
//

import UIKit

extension SettingsTableViewCell {
    enum Metric {
        static let iconContainerCornerRadius: CGFloat = 8
        static let labelNumberOfLines = 1
        static let additionalLabelNumberOfLines = 1
        
        static let iconContainerXShift: CGFloat = 15
        static let iconContainerYShift: CGFloat = 6
        
        static let labelXShift: CGFloat = 25
        static let labelYShift: CGFloat = 0
        static let labelWidthShift: CGFloat = 25
        
        static let switchElementXShift: CGFloat = 60
    }
    
    enum Strings {
        static let identifierViewCell = "SettingsTableViewCell"
    }
}
