//
//  JKNetworkTools.swift
//  AFN_Swift_JK
//
//  Created by WangBiao on 2016/10/28.
//  Copyright © 2016年 lsrain. All rights reserved.
//

import UIKit

import AFNetworking

/* 
 请求示例URL
    http://www.weather.com.cn/data/sk/101010100.html 
 */

/* get post 请求方式枚举(Swift 枚举写法) */
enum LS_AFNMethod: String {
    case get = "get"
    case post = "post"
}

class LS_AFN: AFHTTPSessionManager {
    
    /// 网络请求公共方法
    ///
    /// - parameter method:     请求方式
    /// - parameter urlString:   url 地址
    /// - parameter parameters: 请求参数
    /// - parameter success:    成功
    /// - parameter failure:    失败
    func requet(method: LS_AFNMethod, urlString: String, parameters: Any?, success:@escaping (Any?)->(), failure:@escaping (Error)->()){
        // get 请求
        if method == .get {
            get(urlString, parameters: parameters, progress: nil, success: { (_, responseObject) in
                success(responseObject)
                }, failure: { (_, error) in
                    failure(error)
            })
        }else {
            // post 请求
            post(urlString, parameters: parameters, progress: nil, success: { (_, responseObject) in
                success(responseObject)
                }, failure: { (_, error) in
                    failure(error)
            })
        }
    }
    
    // 全局访问点
    static let sharedTools: LS_AFN = {
        let jk_afn = LS_AFN()
        
        /* 反序列化格式支持 */
        jk_afn.responseSerializer.acceptableContentTypes?.insert("text/html")
        
        return jk_afn
    }()
}


