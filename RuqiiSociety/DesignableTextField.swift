//
//  DesignableTextField.swift
//  RuqiiSociety
//
//  Created by abdllah aljohar on 24/07/2017.

//This class is used to add icons in the text feilds
import UIKit

@IBDesignable// to show that this class can be used in the Interface builder as additional choicee

class DesignableTextField: UITextField {
    //creating variable that appears in the attribute inspector
    @IBInspectable var rightIcon: UIImage?
        
        {
        didSet{
        updateView() // calls update View function if the value of rightIcon variable changed
        }//end of did set
    
    }
    
    
    func updateView(){
        if let icon = rightIcon{
        rightViewMode = .always//Showing the image if exists
            let iconView = UIImageView(frame: CGRect(x:1, y: 0, width: 20, height: 20))//giving the dimentions for the icon
            iconView.image = icon
            
            let View = UIView(frame: CGRect (x: 0, y: 0, width: 25, height: 20))//creating a new view to place the icon in the right place
            View.addSubview(iconView)
            rightView = View
        }
        else {
        rightViewMode = .never
        }
    
    }
    
    
    
    
}//end of designableTextField class
