//
//  AlertController.swift
//  EasyAllertViewFrameWork
//
//  Created by Isaias Fernandes on 02/06/17.
//  Copyright © 2017 isaiasmelof. All rights reserved.
//

import UIKit

protocol EasyAlertControllerDelegate {
    func userDidSelectAction (action: EasyAction, atIndex index: Int)
}

class EasyAlertController: NSObject {
    var title: String = ""
    var menssage: String = ""
    var actions: [EasyAction] = [EasyAction(usingTitle: "Ok", andAlerActionStyle: .default)]
    
    var style: UIAlertControllerStyle = UIAlertControllerStyle.alert
    
    var delegate: EasyAlertControllerDelegate?
    
    init(title: String, menssage: String, actions: [EasyAction], style: UIAlertControllerStyle) {
        self.actions = actions
        self.menssage = menssage
        self.title = title
        self.style = style
        super.init()
    }
    
    func showEasyAlert(controller: UIViewController) {
        let alert: UIAlertController = UIAlertController(title: self.title, message: self.menssage, preferredStyle: self.style)
        
        for index in 0..<self.actions.count {
            alert.addAction(self.actions[index].action!)
        }
        
        controller.present(alert, animated: true, completion: nil)
    }
    
    
    
}

extension EasyAlertController: EasyActionDelegate {
    
    func actionWasSelected(selectedAction:EasyAction) {
        delegate?.userDidSelectAction(action: selectedAction, atIndex: self.actions.index(of: selectedAction)!)
    }
}
