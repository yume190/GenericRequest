//
//  Entry+C.swift
//  GenericRequest
//
//  Created by Yume on 2018/6/6.
//

import Foundation
import YumeAlamofire
import Alamofire

extension Entry {
    struct C: Entryable {
        typealias ResponseType = Response
        
        let key: String
        
        let base: String = Entry.base
        var path: String { return "/c" }
        let sessionManager: Alamofire.SessionManager = Entry.alamofire
        let method: Alamofire.HTTPMethod = .get
        var parameters: Parameters {
            return ["key" : key]
        }
        let isJSONRequest: Bool = true
        let headers: Headers = [:]
        
        struct Response: Codable {
            let code: Int
        }
    }
}
