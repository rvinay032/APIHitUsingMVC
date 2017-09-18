////
////  SignUpVCViewController.swift
////  APIUsingMVC
////
////  Created by appinventiv on 18/09/17.
////  Copyright © 2017 appinventiv. All rights reserved.
////
//
//import UIKit
//
//class SignUpViewController: UIViewController {
//
//    // outlet for tableView%%%%%%%%%%%%%
//
//    @IBOutlet weak var signUptableView: UITableView!
//
//
//    @IBAction func signUpBtnTap(_ sender: UIButton) {
//
//
//        let obAPI = APIController()
//        
//        let index = getCell()
//
//
//        obAPI.logInWith(userNamelogInWith: userNameTextField.text!, passwordlogInWith: passwordTextField.text!, doblogInWith: DOBTextField.text!, contactNologInWith: contactNoTextfield.text! ) //{ objOfPerson in
//
//
//    }
//
//
//    // Variable declartion%%%%%%%%%%%%%%%%
//
//   let arr = ["UserName", "Password", "Date-Of-Birth", "Contact No" ]
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        let  cellNib = UINib(nibName: "SignUpTableViewCell", bundle: nil)
//        signUptableView.register(cellNib, forCellReuseIdentifier: "SignUpTableViewCellId")
//
//
//       signUptableView.delegate = self
//       signUptableView.dataSource = self
//
//    }
//
//    // Class Methods %%%%%%%%%%%%%%
//
//    func getCell() -> UITableViewCell{
//        let textField: UITextField
//        var cell : UIView = textField
//        while !(cell is SignUpTableViewCell) {
//            if let super_view = cell.superview {
//                cell = super_view
//            }else{}
//        }
//        guard let tableCell = cell as? SignUpTableViewCell else {fatalError()}
//        return tableCell
//    }
//
//
//
//   }
//
//extension SignUpViewController: UITableViewDataSource, UITableViewDelegate {
//
//
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return arr.count
//    }
//
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        guard let cell = tableView.dequeueReusableCell(withIdentifier: "SignUpTableViewCellId", for: indexPath) as? SignUpTableViewCell else {fatalError("unable to make cell")}
//
//       // cell..placeholder = self.arr[indexPath.row]
//
//        cell.dataTextField.placeholder = self.arr[indexPath.row]
//
//        return cell
//
//    }
//
//
//}

