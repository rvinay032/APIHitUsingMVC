//
//  ViewController.swift
//  APIUsingMVC
//
//  Created by appinventiv on 15/09/17.
//  Copyright © 2017 appinventiv. All rights reserved.
//

import UIKit
import SVProgressHUD


class ViewController: UIViewController {
    
   // let myActivityIndicator = UIActivityIndicatorView(activityIndicatorStyle: //////UIActivityIndicatorViewStyle.whiteLarge)
    
    // Outlet of tableView////////
    
    @IBAction func signInBtnTap(_ sender: UIButton) {
        
        SVProgressHUD.setDefaultAnimationType(.flat)
        SVProgressHUD.setBackgroundColor(.black)
        SVProgressHUD.setForegroundColor(.red)
        SVProgressHUD.show(withStatus: "Please wait")
        
        
      
        
        APIController().logInWith(userName: userNameTextField.text!, password: passwordTextField.text!, dob: DOBTextField.text!, contactNo: contactNoTextfield.text! )
         {
            objOfPerson in
        

            guard let signUpScene = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewCotrollerId") as? SecondViewCotroller else {fatalError("unable to make object")}
            
            signUpScene.usernameSecond = objOfPerson.usernamePerson
            signUpScene.passwordSecond = objOfPerson.passwordPerson
            signUpScene.dobSecond = objOfPerson.dobPerson
            signUpScene.contactNoSecond = objOfPerson.contactNoPerson
            print(objOfPerson.usernamePerson)            
            
            //DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(3), execute: {
                
            self.navigationController?.pushViewController(signUpScene, animated: true)
                
            SVProgressHUD.dismiss()
                

           // })
            
        }}
    
    
    @IBOutlet weak var userNameTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var DOBTextField: UITextField!
    
    @IBOutlet weak var contactNoTextfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       // myActivityIndicator.center = view.center
        //myActivityIndicator.isHidden = true
       // view.addSubview(myActivityIndicator)
        
        
        
    }
    
    
    
    
}


