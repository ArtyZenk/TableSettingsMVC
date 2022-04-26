//
//  SettingsTableViewCell.swift
//  TableSettingsMVC
//
//  Created by Artyom Guzenko on 26.04.2022.
//

import UIKit

class SettingsTableViewCell: UITableViewCell {
    
    static let identifier = Strings.identifierViewCell
    
    //  MARK: - Elements
    private let iconContainer: UIView = {
       let view = UIView()
        view.clipsToBounds = true
        view.layer.cornerRadius = Metric.iconContainerCornerRadius
        view.layer.masksToBounds = true
        return view
    }()
    
    private let iconImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.tintColor = .white
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    private let label: UILabel = {
       let label = UILabel()
        label.numberOfLines = Metric.labelNumberOfLines
        return label
    }()
    
    let additionalLabel: UILabel = {
       let label = UILabel()
        label.textAlignment = .right
        label.textColor = .darkGray
        label.numberOfLines = Metric.additionalLabelNumberOfLines
        return label
    }()
    
    private let switchElement: UISwitch = {
        let switchElement = UISwitch()
        switchElement.onTintColor = .systemGreen
        switchElement.sizeToFit()
        return switchElement
    }()
    
    //  MARK: - Initial
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupHierarchy()
        setupLayouts()
        
        contentView.clipsToBounds = true
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    //  MARK: - Private functions
    private func setupHierarchy() {
        contentView.addSubview(label)
        contentView.addSubview(iconContainer)
        contentView.addSubview(additionalLabel)
        iconContainer.addSubview(iconImageView)
    }
    
    private func setupLayouts() {
                
        let size: CGFloat = contentView.frame.height - 17
        iconContainer.frame = CGRect(
            x: Metric.iconContainerXShift,
            y: Metric.iconContainerYShift,
            width: size,
            height: size
        )
        
        let imageSize: CGFloat = size / 1.2
        iconImageView.frame = CGRect(
            x: (size-imageSize) / 2,
            y: (size-imageSize) / 2,
            width: imageSize,
            height: imageSize
        )
        
        label.frame = CGRect(
            x: Metric.labelXShift + iconContainer.frame.size.width,
            y: Metric.labelYShift,
            width: contentView.frame.size.width - Metric.labelWidthShift - iconContainer.frame.size.width,
            height: contentView.frame.size.height
        )
        
        additionalLabel.frame = CGRect(
            x: (contentView.frame.size.width - contentView.frame.size.width / 2.3),
            y: (contentView.frame.size.height / 7),
            width: contentView.frame.size.width / 2,
            height: iconContainer.frame.size.height
        )

        switchElement.frame = CGRect(
            x: (contentView.frame.size.width - switchElement.frame.size.width + Metric.switchElementXShift),
            y: (contentView.frame.size.height - switchElement.frame.size.height) / 2,
            width: switchElement.frame.size.width,
            height: switchElement.frame.size.height
        )
    }
    
    //  MARK: - prepareForReuse
    override func prepareForReuse() {
        super.prepareForReuse()
        iconImageView.image = nil
        label.text = nil
        iconContainer.backgroundColor = nil
        additionalLabel.text = ""
        switchElement.isOn = false
        accessoryType = .none
        switchElement.removeFromSuperview()
    }
    
    //  MARK: - Configure
    public func configure(with model: SettingsCellOption) {
        label.text = model.title
        iconImageView.image = model.icon
        iconContainer.backgroundColor = model.iconBackgroundColor
        additionalLabel.text = model.label
        model.isSwitch ? (contentView.addSubview(switchElement)) : (accessoryType = .disclosureIndicator)
    }
}

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
