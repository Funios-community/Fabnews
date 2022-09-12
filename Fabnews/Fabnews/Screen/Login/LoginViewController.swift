//
//  LoginViewController.swift
//  Fabnews
//
//  Created by Hario Budiharjo on 12/09/22.
//

import UIKit
import RxCocoa
import RxSwift

class LoginViewController: UIViewController {
    
    @IBOutlet weak var usernameTf: UITextField!
    @IBOutlet weak var passwordTf: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    let viewModel = LoginViewModel()
    let disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setObserver()
    }
    
    private func setObserver() {
        usernameTf.rx.text.orEmpty.bind(to: viewModel.username).disposed(by: disposeBag)
        passwordTf.rx.text.orEmpty.bind(to: viewModel.password).disposed(by: disposeBag)
        
        viewModel.loginSuccess.subscribe { success in
            if success.event.element ?? false {
                let vc = ListNewsViewController(nibName: String(describing: ListNewsViewController.self), bundle: nil)
                vc.modalPresentationStyle = .fullScreen
                self.present(vc, animated: true)
            }
        }.disposed(by: disposeBag)
        
        viewModel.errorMessage.subscribe { message in
            print(message)
        }.disposed(by: disposeBag)
        
        loginButton.rx.tap.subscribe { _ in
            self.viewModel.login()
        }.disposed(by: disposeBag)
    }
}
