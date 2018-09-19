import Vapor
import Console


/// Register your application's routes here.
public func routes(_ router: Router) throws {
    // Basic "Hello, world!" example
//    router.get("hello") { req in
//        return "Hello Dapper Dan!"
//    }
    
    router.get("goodbye") { req in
    
        return "This is the last of my departures."
    }

    // Example of configuring a controller
    let todoController = TodoController()
    router.get("todos", use: todoController.index)
    router.post("todos", use: todoController.create)
    router.delete("todos", Todo.parameter, use: todoController.delete)
}
