//
//  UserBoundary_Impl.swift
//  Ads_Vuld_Khoanv
//
//  Created by vuld on 9/5/18.
//  Copyright © 2018 vuld. All rights reserved.
//
import Foundation
public class UserBoundary_Impl : UserBoundary{
    
    var userGateway:UserGateway;
    init() {
        userGateway = DependencyResolver.getUserGateway();
    }
    public func login(email: String, password: String, complete :@escaping (Bool)->Void) {
        userGateway.Login(email: email, password: password, complete: {(isSuccess, resultUser) in
            if(isSuccess){
                User.CurrentUser? = User(id: "", email:"");
                User.CurrentUser?.onLoginSuccess(user: resultUser!);
                complete(true);
            }
            else{
                complete(false);
            }
        });
    }
    public func logout(complete: @escaping (Bool)->Void) {
        userGateway.Logout(complete:complete);
    }
    
    public func register(email: String, password: String, complete: @escaping (Bool)-> Void) {
        print("Registering....");
        userGateway.Regiter(email: email, password: password, complete:{(isSuccess, resultUser) in
            if(isSuccess){
                DomainEntity.onRegisteredUser(user: resultUser!);
                complete(true);
            }
            else{
                complete(false);
            }
        });
    }
}
