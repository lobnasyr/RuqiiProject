//
//  Utilities.swift
//  RuqiiSociety
//
//  Created by abdllah aljohar on 31/07/2017.
//  Copyright © 2017 abdllah aljohar. All rights reserved.
//

import Foundation
import UIKit

class Utilities {
    
    // function to show an Error alert to user by pop up 
    // Note: UIAlertController is considered as UIViewController as well.
    func ShowAlert (title: String, msg: String, vc: UIViewController){
        
        let alert = UIAlertController(title: title, message: msg, preferredStyle: .alert)
        // this function will add a button to the popup 
        // when there is No Action after user clicks "حسنا" button, handler is nil
        alert.addAction(UIAlertAction(title: "حسناً", style: .default, handler: nil))
        vc.present(alert, animated: true, completion: nil)
        
    }
}
