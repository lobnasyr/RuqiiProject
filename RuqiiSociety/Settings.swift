//
//  Settings.swift
//  RuqiiSociety
//
//  Created by abdllah aljohar on 24/07/2017.
//  Copyright © 2017 abdllah aljohar. All rights reserved.
//

import UIKit

class Settings: UIViewController, UITableViewDelegate , UITableViewDataSource {
    
    var selectedIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.tableFooterView = UIView(frame: CGRect.zero)
    
    }

    override func viewWillAppear(_ animated: Bool) {
        self.navigationItem.title = "الإعدادات"
        
    }
    @IBOutlet weak var tableView: UITableView!
    var ChoiceLabelArray = ["الملف الشخصي","أسعار الخدمات"]
    var Icons = [UIImage(named: "UserProfileIcon"),UIImage(named: "CostIcon")]
    var DetailsIconArray = [UIImage(named:"MoreIcon") , UIImage(named:"MoreIcon")]
    override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
   
        return ChoiceLabelArray.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
       let cell = self.tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomizedCell
        cell.ChoiceIcon.image = Icons [indexPath.row]
        cell.ChoiceTitle.text = ChoiceLabelArray [indexPath.row]
        cell.DetailsIcon.image = DetailsIconArray [indexPath.row]
        return cell
    
    }
    
    
    
   func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        
       selectedIndex = indexPath.row
        switch selectedIndex {
        case 0:
            performSegue(withIdentifier: "الملف الشخصي", sender: self)
        case 1:
            performSegue(withIdentifier: "أسعار الخدمات", sender: self)
    
        default:
            print("Index greater than the list")
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
