//
//  SettingsTableViewCell.swift
//  TableSettingsMVC
//
//  Created by Artyom Guzenko on 26.04.2022.
//

import UIKit

class SettingsTableViewCell: UITableViewCell {
    
    static let identifier = "SettingsTableViewCell"
    
    //  MARK: - Elements
    private let iconContainer: UIView = {
       let view = UIView()
        view.clipsToBounds = true
        view.layer.cornerRadius = 8
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
        label.numberOfLines = 1
        return label
    }()
    
    let additionalLabel: UILabel = {
       let label = UILabel()
        label.textAlignment = .right
        label.textColor = .darkGray
        label.numberOfLines = 1
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
        iconContainer.frame = CGRect(x: 15, y: 6, width: size, height: size)
        
        let imageSize: CGFloat = size / 1.2
        iconImageView.frame = CGRect(x: (size-imageSize) / 2,
                                     y: (size-imageSize) / 2,
                                     width: imageSize,
                                     height: imageSize)
        
        label.frame = CGRect(x: 25 + iconContainer.frame.size.width,
                             y: 0,
                             width: contentView.frame.size.width - 25 - iconContainer.frame.size.width,
                             height: contentView.frame.size.height)
        
        additionalLabel.frame = CGRect(x: (contentView.frame.size.width - contentView.frame.size.width / 1.9),
                             y: (contentView.frame.size.height / 7),
                             width: contentView.frame.size.width / 2,
                             height: iconContainer.frame.size.height)

        switchElement.frame = CGRect(x: (contentView.frame.size.width - switchElement.frame.size.width + 10),
                            y: (contentView.frame.size.height - switchElement.frame.size.height) / 2,
                            width: switchElement.frame.size.width,
                            height: switchElement.frame.size.height)
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
