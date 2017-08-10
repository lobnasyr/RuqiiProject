

import UIKit
import Firebase
import FirebaseDatabase



class signupStep2: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource, UITextFieldDelegate {
    @IBOutlet weak var bankTextField: UITextField!
    
    
    @IBOutlet weak var dropdownList: UIPickerView!
    @IBOutlet weak var nextButtonStep2: UIButton!
    var bankNames = ["البنك الأهلي التجاري", "مصرف الراجحي", "البنك الأول","مجموعة سامبا","بنك ساب","بنك البلاد","البنك السعودي الفرنسي",
                     "البنك العربي الوطني","بنك الجزيرة","بنك الرياض","مصرف إنماء","البنك السعودي للاستثمار","أخرى"]
    
    var email = String ()
    var password = String ()

    override func viewDidLoad() {
        super.viewDidLoad()
        print(email)
        print(password)

        // Do any additional setup after loading the view.
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // the following 5 function below all related to picker view (bank names list )
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int{
        return 1
        
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int)-> Int{
        
        return bankNames.count
        
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        self.view.endEditing(true)
        return bankNames[row]
        
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        self.bankTextField.text = self.bankNames[row]
        self.dropdownList.isHidden = true
        
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {

        
        if textField == self.bankTextField{
            self.dropdownList.isHidden = false
            //if you dont want the users to see the keyboard type:
            
            textField.endEditing(true)
        }
        
    }

    



}
