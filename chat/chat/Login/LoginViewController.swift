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
		self.loginView.navDelegate = self
	}
}

extension LoginViewController: ILoginNavDelegate
{
	func showRegister() {
		let registerVC = RegisterViewController()
		self.present(registerVC, animated: true)
	}
}
