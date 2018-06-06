//
//  File.swift
//  Alamofire
//
//  Created by Yume on 2018/6/5.
//

import Foundation
import PromiseKit
import AwaitKit
import YumeAlamofire

extension Entryable where ResponseType: Codable {
    var promise: Promise<ResponseType> {
        return Promise<ResponseType> { (seal) in
            // Make an HTTP request to download the image.
            self.dataRequest.responseData { (res) in
                let decoder = JSONDecoder()
                if
                    let data = res.result.value,
                    let result = try? decoder.decode(ResponseType.self, from: data) {
                    seal.fulfill(result)
                } else {
                    seal.reject(res.error!)
                }
            }
        }
    }
    
//    func promise() -> Promise<ResponseType> {
//        return Promise<ResponseType> { (seal) in
//            // Make an HTTP request to download the image.
//            self.dataRequest.responseData { (res) in
//                let decoder = JSONDecoder()
//                if
//                    let data = res.result.value,
//                    let result = try? decoder.decode(ResponseType.self, from: data) {
//                    seal.fulfill(result)
//                } else {
//                    seal.reject(res.error!)
//                }
//            }
//        }
//    }
}
