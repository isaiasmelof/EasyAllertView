//
//  ViewController.swift
//  Exemplo
//
//  Created by Daniel Lima on 02/06/17.
//  Copyright © 2017 isaiasmelof. All rights reserved.
//

import UIKit

class ViewController: UIViewController, EasyAlertControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func createAlert(_ sender: Any) {
        
        
        
        var actionsArray:Array<EasyAction> = Array()
        
        let action1 = EasyAction(usingTitle: "OK", andAlerActionStyle: UIAlertActionStyle.default)
        let action2 = EasyAction(usingTitle: "Cancel", andAlerActionStyle: UIAlertActionStyle.cancel)
        
        //add actions to array
        actionsArray.append(action1)
        actionsArray.append(action2)
        
        let newAlert:EasyAlertController = EasyAlertController(title: "Easy", menssage: "easy peasy lemon squeezy", actions: actionsArray, style: UIAlertControllerStyle.alert)
        
        
        newAlert.showEasyAlert(controller: self)
        
        
    }
    
    
    @IBAction func createActionSeet(_ sender: Any) {
        
        var actionsArray:Array<EasyAction> = Array()
        
        let action1 = EasyAction(usingTitle: "OK", andAlerActionStyle: UIAlertActionStyle.default)
        let action2 = EasyAction(usingTitle: "Cancel", andAlerActionStyle: UIAlertActionStyle.cancel)
        
        //add actions to array
        actionsArray.append(action1)
        actionsArray.append(action2)
        
        let newAlert:EasyAlertController = EasyAlertController(title: "Easy", menssage: "easy peasy lemon squeezy", actions: actionsArray, style: UIAlertControllerStyle.actionSheet)
        
        newAlert.showEasyAlert(controller: self)
        
    }
    
    func userDidSelectAction(action: EasyAction, atIndex index: Int) {
        
        print("user selected action at index: \(index) for action: \(action.action?.title!)")
        
    }
    
}

