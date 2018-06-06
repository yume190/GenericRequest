import Alamofire
import Foundation

struct Entry {
    static let base = "http://127.0.0.1:3000"
    
    public static let alamofire:SessionManager = {
        let configuration = URLSessionConfiguration.default
        configuration.timeoutIntervalForRequest = 15 // seconds
        configuration.timeoutIntervalForResource = 15
        configuration.urlCache = nil
        let alamofire = Alamofire.SessionManager(configuration: configuration)
        return alamofire
    }()
}
