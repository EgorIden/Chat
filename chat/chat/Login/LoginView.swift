//
//  LoginView.swift
//  chat
//
//  Created by egor on 13.08.2024.
//

import UIKit

protocol ILoginNavDelegate: AnyObject
{
	func showRegister()
}

final class LoginView: UIView
{
	var navDelegate: ILoginNavDelegate?

	private let stackView: UIStackView = {
		let view = UIStackView()
		view.axis = .vertical
		view.spacing = 8
		view.alignment = .fill
		view.distribution = .fillEqually
		view.backgroundColor = .blue
		view.translatesAutoresizingMaskIntoConstraints = false
		return view
	}()

	private let emailTextView: UITextField = {
		let view = UITextField()
		view.placeholder = "Email"
		view.backgroundColor = .lightGray
		view.translatesAutoresizingMaskIntoConstraints = false
		return view
	}()

	private let passwordTextView: UITextField = {
		let view = UITextField()
		view.placeholder = "Password"
		view.backgroundColor = .lightGray
		view.translatesAutoresizingMaskIntoConstraints = false
		return view
	}()

	private lazy var loginBtn: UIButton = {
		let btn = UIButton()
		btn.setTitle("Login", for: .normal)
		btn.setTitleColor(.white, for: .normal)
		btn.backgroundColor = .lightGray
		btn.translatesAutoresizingMaskIntoConstraints = false
		return btn
	}()

	private lazy var registerBtn: UIButton = {
		let btn = UIButton()
		btn.setTitle("Register", for: .normal)
		btn.setTitleColor(.white, for: .normal)
		btn.backgroundColor = .lightGray
		btn.addTarget(self, action: #selector(registerBtnTapped), for: .touchUpInside)
		btn.translatesAutoresizingMaskIntoConstraints = false
		return btn
	}()

	override init(frame: CGRect) {
		super.init(frame: frame)
		self.configureUI()
	}
	
	@available(*, unavailable)
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
}

private extension LoginView
{
	func configureUI() {
		self.setupView()
		self.setupLayout()
	}

	//MARK: Setup View
	func setupView() {
		self.backgroundColor = .white
		self.addSubview(self.stackView)
		self.addSubview(self.loginBtn)
		self.addSubview(self.registerBtn)

		self.stackView.addArrangedSubview(self.emailTextView)
		self.stackView.addArrangedSubview(self.passwordTextView)
	}

	//MARK: Setup Layout
	func setupLayout() {
		self.stackView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
		self.stackView.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
		self.stackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 12).isActive = true
		self.trailingAnchor.constraint(equalTo: self.stackView.trailingAnchor, constant: 12).isActive = true
		self.stackView.heightAnchor.constraint(equalToConstant: 140).isActive = true

		self.loginBtn.leadingAnchor.constraint(equalTo: self.stackView.leadingAnchor).isActive = true
		self.loginBtn.trailingAnchor.constraint(equalTo: self.stackView.trailingAnchor).isActive = true
		self.loginBtn.topAnchor.constraint(equalTo: self.stackView.bottomAnchor, constant: 24).isActive = true
		self.loginBtn.heightAnchor.constraint(equalToConstant: 50).isActive = true

		self.registerBtn.leadingAnchor.constraint(equalTo: self.loginBtn.leadingAnchor).isActive = true
		self.registerBtn.trailingAnchor.constraint(equalTo: self.loginBtn.trailingAnchor).isActive = true
		self.registerBtn.topAnchor.constraint(equalTo: self.loginBtn.bottomAnchor, constant: 8).isActive = true
		self.registerBtn.heightAnchor.constraint(equalToConstant: 50).isActive = true
	}

	@objc func registerBtnTapped() {
		self.navDelegate?.showRegister()
	}
}
