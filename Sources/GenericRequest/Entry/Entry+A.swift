//
//  Entry+A.swift
//  GenericRequest
//
//  Created by Yume on 2018/6/6.
//

import Foundation
import YumeAlamofire
import Alamofire

extension Entry {
    struct A: Entryable {
        typealias ResponseType = Response
        
        let key: String
        
        let base: String = Entry.base
        var path: String { return "/a" }
        let sessionManager: Alamofire.SessionManager = Entry.alamofire
        let method: Alamofire.HTTPMethod = .get
        let parameters: Parameters = [:]
        let isJSONRequest: Bool = false
        var headers: Headers {
            return ["key" : key]
        }
    }
}

extension Entry.A {
    struct Response: Codable {
        let code: Int
        let message: String
    }
}
