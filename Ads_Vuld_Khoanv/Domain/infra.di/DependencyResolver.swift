//
//  DependencyResolver.swift
//  Ads_Vuld_Khoanv
//
//  Created by vuld on 9/5/18.
//  Copyright © 2018 vuld. All rights reserved.
//

import Foundation
public class DependencyResolver{
    
    public static func getUserGateway()-> UserGateway{
        var userGateway = UserGateway_Impl();
        return userGateway;
    }
    
    public static func getUserBoundary()-> UserBoundary{
        print("get boundary");
        var userBoundary = UserBoundary_Impl();
        return userBoundary;
    }
    
    public static func getUserView()-> UserView{
        var userView = UserView();
        return userView;
    }
    public static func getUserController()->UserController{
        var userController = UserController();
        return userController;
    }
    
    //profile
    public static func getProfileGateway() -> ProfileGateway{
        var gateway = ProfileGateway_Impl();
        return gateway;
        
    }
    
    
}
