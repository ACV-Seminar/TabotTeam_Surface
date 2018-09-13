//
//  EarnView.swift
//  Ads_Vuld_Khoanv
//
//  Created by Vu Le duy on 9/13/18.
//  Copyright © 2018 vuld. All rights reserved.
//

import Foundation
import UIKit
public class EarnView : UIViewController{
    var presenter: IUserPresenter?;
    override public func viewDidLoad() {
        super.viewDidLoad()
        self.presenter = UserPresenter_Impl();
        view.backgroundColor = UIColor(r: 61, g:91, b:151)
    }
    
}
