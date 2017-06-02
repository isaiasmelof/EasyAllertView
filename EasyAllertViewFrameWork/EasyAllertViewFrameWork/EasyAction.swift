//
//  EasyAction.swift
//  EasyAllertViewFrameWork
//
//  Created by Daniel Lima on 02/06/17.
//  Copyright © 2017 isaiasmelof. All rights reserved.
//

import UIKit

class EasyAction: NSObject {
    
    var action:UIAlertAction
    
    init(usingTitle title:String, andAlerActionStyle type:UIAlertActionStyle) {
     
        action = UIAlertAction(title: title, style: type, handler: { (UIAlertAction) in
            
        })
        
        super.init()
    }
}

