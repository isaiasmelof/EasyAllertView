//
//  AlertController.swift
//  EasyAllertViewFrameWork
//
//  Created by Isaias Fernandes on 02/06/17.
//  Copyright © 2017 isaiasmelof. All rights reserved.
//

import UIKit

class EasyAlertController: NSObject {
    var title: String?
    var menssage: String?
    var actions: [EasyAction]?
    var style: UIAlertControllerStyle = UIAlertControllerStyle.alert
    
    init(title: String, menssage: String, actions: [EasyAction], style: UIAlertControllerStyle) {
        self.actions = actions
        self.menssage = menssage
        self.title = title
        self.style = style
        super.init()
    }
    
    func showEasyAlert(controller: UIViewController) {
        let alert: UIAlertController = UIAlertController(title: self.title, message: self.menssage, preferredStyle: self.style)
        
    }
}
