//
//  UserGetway_Impl.swift
//  Ads_Vuld_Khoanv
//
//  Created by vuld on 8/30/18.
//  Copyright © 2018 vuld. All rights reserved.
//

import Foundation
import Firebase

public class UserGateway_Impl: UserGateway{
    
    public func updatePassword(password: String, complete: @escaping (Bool)-> Void) {
        print("update pass");
    }
    
    public func Login(email:String, password:String, complete: @escaping (Bool,User?) -> Void) -> Void {
        Auth.auth().signIn(withEmail: email, password: password) { (user, error) in
            if error != nil {
                print(error ?? "login Error  cmnr - From me");
                complete(false, nil);
                return;
            }
            print("login successfully")
            var myUser = User(id:user?.uid, email:email);
            complete(true, myUser);
        }
    }
    
    public func Logout(complete: @escaping (Bool)->Void) {
        print("Logout");

    }
    
    public func Regiter(email: String, password: String, complete: @escaping (Bool, User?)->Void) -> Void {
        print("Regiter");
        Auth.auth().createUser(withEmail: email, password: password) { (user, error) in
            if error != nil {
                print(error ?? "register error - from me");
                complete(false, nil);
                return
            }
            print("success  create user")
            guard let uid = user?.uid else{
                print("not have userId - vuld")
                complete(false, nil);
                return
            }
            var myUser = User(id:user?.uid, email:email);
            complete(true, myUser)
        }
    }
    
    public func save(T: Entity) {
        print("save");

    }
    
    public func get<T>(idEntity: String) -> T where T : Entity {
        print("Regiter");
        let entity =  User(id: "123", email: "xyz");
        return entity as! T;
    }
    

    
}
