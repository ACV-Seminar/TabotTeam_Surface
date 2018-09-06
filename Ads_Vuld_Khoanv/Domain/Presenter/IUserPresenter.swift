//
//  UserPresenter.swift
//  Ads_Vuld_Khoanv
//
//  Created by vuld on 9/5/18.
//  Copyright © 2018 vuld. All rights reserved.
//

import Foundation
@objc protocol IUserPresenter {
    func onLoginBtn(email:String, password:String);
    func onLogoutBtn();
    func onRegisterBtn(email: String, password:String);
    func onUpdatePassword();
}
