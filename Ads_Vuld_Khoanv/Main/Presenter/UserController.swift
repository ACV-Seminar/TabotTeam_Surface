//
//  UserController.swift
//  Ads_Vuld_Khoanv
//
//  Created by vuld on 9/5/18.
//  Copyright © 2018 vuld. All rights reserved.
//

import Foundation
public class UserController{
    var userBoundary:UserBoundary?;
    
    init() {
        userBoundary = DependencyResolver.getUserBoundary()
    }
    public func onLogin(email:String, password:String){
        userBoundary?.login(email:email , password: password, complete: onLoginSuccess);
    }
    
    func onLoginSuccess(isSuccess:Bool){
        if(isSuccess){
            print("On Login Successfully");
            print("Goto HomePage");
            
        }
        else{
            print("On Login faild");
        }
    }
    
    func onRegister(email:String, password:String) -> Void {
        print("onRegisterBtn")

        userBoundary?.register(email: email, password: password, complete: onRegisterSuccess)
    }
    func onRegisterSuccess(isSuccess:Bool) -> Void {
        if(isSuccess){
            print("On Register Successfully");

        }
        else{
            print("On regiter faild");
        }
    }
    
}
