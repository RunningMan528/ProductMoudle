//
//  CTMediator+Product.swift
//  ProductMoudle
//
//  Created by peixu on 2023/4/10.
//

import Foundation
import CTMediator

public extension CTMediator {
    
    @objc func Product_ViewControllerWithUserId(_ userId:String,callback:@escaping (String) -> Void) -> UIViewController? {
        let params = [
            "callBack":callback,
            "userId":userId,
            kCTMediatorParamsKeySwiftTargetModuleName:"Product_swift"
        ] as [String : Any]
        if let viewController = self.performTarget("Product", action: "viewController", params: params, shouldCacheTarget: false) as? UIViewController{
            return viewController
        }
        return nil
    }
}