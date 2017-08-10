//
//  servicesSettings.swift
//  RuqiiSociety
//
//  Created by abdllah aljohar on 05/08/2017.
//  Copyright © 2017 abdllah aljohar. All rights reserved.
//

import UIKit

class servicesSettings: UIViewController {

    @IBOutlet weak var priceRangeSlider: UISlider!
    @IBOutlet weak var serviceLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        self.navigationItem.title = "إعدادات أسعار الخدمات"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
