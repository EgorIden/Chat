//
//  LoginView.swift
//  chat
//
//  Created by egor on 13.08.2024.
//

import UIKit

final class LoginView: UIView 
{
	private let stackView: UIStackView = {
		let view = UIStackView(frame: .zero)
		view.axis = .vertical
		view.spacing = 8
		view.alignment = .fill
		view.distribution = .fillEqually
		view.backgroundColor = .blue
		view.translatesAutoresizingMaskIntoConstraints = false
		return view
	}()

	private let nameTextView: UITextField = {
		let view = UITextField(frame: .zero)
		view.placeholder = "Username"
		view.backgroundColor = .lightGray
		view.translatesAutoresizingMaskIntoConstraints = false
		return view
	}()

	private let emailTextView: UITextField = {
		let view = UITextField(frame: .zero)
		view.placeholder = "Email"
		view.backgroundColor = .lightGray
		view.translatesAutoresizingMaskIntoConstraints = false
		return view
	}()

	private let passwordTextView: UITextField = {
		let view = UITextField(frame: .zero)
		view.placeholder = "Password"
		view.backgroundColor = .lightGray
		view.translatesAutoresizingMaskIntoConstraints = false
		return view
	}()

	private let loginBtn: UIButton = {
		let btn = UIButton(frame: .zero)
		btn.setTitle("Login", for: .normal)
		btn.setTitleColor(.white, for: .normal)
		btn.backgroundColor = .lightGray
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
		self.stackView.addArrangedSubview(self.nameTextView)
		self.stackView.addArrangedSubview(self.emailTextView)
		self.stackView.addArrangedSubview(self.passwordTextView)
	}

	//MARK: Setup Layout
	func setupLayout() {
		self.stackView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
		self.stackView.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
		self.stackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 12).isActive = true
		self.trailingAnchor.constraint(equalTo: self.stackView.trailingAnchor, constant: 12).isActive = true
		self.stackView.heightAnchor.constraint(equalToConstant: 200).isActive = true

		self.loginBtn.leadingAnchor.constraint(equalTo: self.stackView.leadingAnchor).isActive = true
		self.loginBtn.trailingAnchor.constraint(equalTo: self.stackView.trailingAnchor).isActive = true
		self.loginBtn.topAnchor.constraint(equalTo: self.stackView.bottomAnchor, constant: 24).isActive = true
		self.loginBtn.heightAnchor.constraint(equalToConstant: 50).isActive = true
	}
}
