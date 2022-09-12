//
//  LoginViewModel.swift
//  Fabnews
//
//  Created by Hario Budiharjo on 12/09/22.
//

import RxRelay

class LoginViewModel {
    let username: BehaviorRelay<String?> = BehaviorRelay(value: nil)
    let password: BehaviorRelay<String?> = BehaviorRelay(value: nil)
    
    let loginSuccess: PublishRelay<Bool> = PublishRelay()
    let errorMessage: PublishRelay<String> = PublishRelay()
    
    func login() {
        guard let uname = username.value, let pass = password.value, uname != "", pass != "" else {
            errorMessage.accept("Username atau password belum diisi!")
            return
        }
        
        if username.value == "hario" && password.value == "123" {
            loginSuccess.accept(true)
        } else {
            errorMessage.accept("Username atau password salah!")
        }
    }
}
