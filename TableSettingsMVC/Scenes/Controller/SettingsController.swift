//
//  SettingsController.swift
//  TableSettingsMVC
//
//  Created by Artyom Guzenko on 26.04.2022.
//

import UIKit

class SettingsController: UIViewController {

    //  MARK: - Elements
    var model: SettingsModel?
    
    private var settingsView: SettingsView? {
        guard isViewLoaded else { return nil }
        return view as? SettingsView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view = SettingsView()
        model = SettingsModel()
        configureView()
        
        self.tabBarController?.tabBar.isHidden = true
    }
}

//  MARK: - Configuration
private extension SettingsController {
    func configureView() {
        guard let models = model?.createOptions() else { return }
        settingsView?.configureView(with: models)
    }
}
