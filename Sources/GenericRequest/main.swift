import Foundation
import AwaitKit

// MARK: Callback Hell Version
Entry.A(key: "a").req { (aRes) in
    Entry.B(key: aRes.message).req { (bRes) in
        Entry.C(key: bRes.message).req { (cRes) in
            print("call back hell \(cRes.code)")
        }
    }
}

// MARK: Async await Version
async {
    do {
        let aRes = try await(Entry.A(key: "a").promise)
        let bRes = try await(Entry.B(key: aRes.message).promise)
        let cRes = try await(Entry.C(key: bRes.message).promise)

        print("async await \(cRes.code)")
    } catch {
        print(error)
    }
}

RunLoop.current.run()
