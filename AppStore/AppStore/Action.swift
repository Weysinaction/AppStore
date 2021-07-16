//
//  Action.swift
//  AppStore
//
//  Created by Владислав Лазарев on 16.07.2021.
//

import UIKit

final class Action: NSObject {

    private let _action: () -> ()
    
    init(action: @escaping () -> ()) {
        _action = action
        super.init()
    }
    
    @objc func action() {
        _action()
    }

}
