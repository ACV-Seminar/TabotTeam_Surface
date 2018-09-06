//
//  UserPresenter_Impl.swift
//  Ads_Vuld_Khoanv
//
//  Created by vuld on 9/5/18.
//  Copyright © 2018 vuld. All rights reserved.
//

import Foundation
public class UserPresenter_Impl : IUserPresenter{
    var controller:UserController;
    init() {
        controller = DependencyResolver.getUserController();
    }
    @objc public func onLoginBtn(email: String, password:String){
        
    }
    @objc public func onLogoutBtn(){
        
    }
    
    @objc public func onRegisterBtn(email: String, password:String){
        self.controller.onRegister(email:email, password:password);
    }
    public func onUpdatePassword(){
        
    }
    
}
