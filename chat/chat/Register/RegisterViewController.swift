//
//  RegisterViewController.swift
//  chat
//
//  Created by egor on 18.08.2024.
//

import UIKit
import FirebaseAuth

class RegisterViewController: UIViewController {

	override func loadView() {
		self.view = RegisterView()
	}

    override func viewDidLoad() {
        super.viewDidLoad()
		self.view.backgroundColor = .blue
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
