//
//  EasyAction.swift
//  EasyAllertViewFrameWork
//
//  Created by Daniel Lima on 02/06/17.
//  Copyright © 2017 isaiasmelof. All rights reserved.
//

import UIKit

protocol EasyActionDelegate{
    func actionWasSelected(selectedAction:EasyAction)
}

class EasyAction: NSObject {
    
    var action:UIAlertAction?
    
    var delegate:EasyActionDelegate?
    
    
    
    init(usingTitle title:String, andAlerActionStyle type:UIAlertActionStyle) {
        
        super.init()
        
        action = UIAlertAction(title: title, style: type, handler: { (UIAlertAction) in
            
            self.delegate?.actionWasSelected(selectedAction: self)
            
        })
    }
}

