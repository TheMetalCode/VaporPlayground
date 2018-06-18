import Vapor

/// Register your application's routes here.
public func routes(_ router: Router) throws {
    // Basic "Hello, world!" example
    router.get("hello") { req in
        return "Hello, world!"
    }

    // decoding and using request body
    router.post(LoginRequest.self, at: "login") { req, loginRequest in
        return loginRequest.email
    }
}

// represents expected request body content
struct LoginRequest: Content {
    var email: String
    var password: String
}
