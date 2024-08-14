//
//  ViewController.swift
//  chat
//
//  Created by egor on 12.08.2024.
//

import UIKit

final class LoginViewController: UIViewController {
	private let loginView = LoginView()

	override func loadView() {
		self.view = self.loginView
	}

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
	}


}

