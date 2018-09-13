//
//  User.swift
//  Ads_Vuld_Khoanv
//
//  Created by vuld on 8/30/18.
//  Copyright © 2018 vuld. All rights reserved.
//

import Foundation
public class User:Entity{
    public static var CurrentUser:User?;
    private var id : String = "";
    private var email : String = "";
    init(id:String?, email: String?){
        self.id = id!;
        self.email = email!;
    }
    init() {
        
    }
    public func set(id:String, email:String){
        self.id = id;
        self.email = email;
    }
    public func getID()->String{
        return self.id;
    }
    
    public func getEmail()->String{
        return self.email;
    }
    
    
    public func login(email: String, password:String, complete: @escaping (Bool) ->Void){
        DependencyResolver.getUserGateway().Login(email: email, password: password, complete: {(isSuccess, resultUser) in
            if(isSuccess){
                if(resultUser != nil){
                    self.id = (resultUser?.id)!;
                    self.email = (resultUser?.email)!;
                    complete(true);
                    return;
                }
            }
            complete(false);
        });
    }
    
    public func register(email:String, password:String, complete: @escaping (Bool) -> Void){
        if(validate(email: email, passord: password)){
            DependencyResolver.getUserGateway().Regiter(email: email, password: password, complete: {(isSuccess, resultUser) in
                if(isSuccess){
                    self.id = (resultUser?.id)!;
                    self.email = (resultUser?.email)!;
                    complete(true);
                    return;
                }
                complete(false)
            });
        }
    }
    
    public func logout(complete: @escaping(Bool) -> Void){
        DependencyResolver.getUserGateway().Logout(complete: {(isSuccess) in
            if(isSuccess){
                self.id = "";
                self.email = "";
                complete(true);
            }
            else{
                complete(false);
            }
        })
    }
    
    private func validate(email:String, passord:String)->Bool{
        //vuld -have continue
        return true;
    }
}
