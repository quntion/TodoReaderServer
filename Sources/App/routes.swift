import Vapor

func routes(_ app: Application) throws {

    app.get("index") { req in
        return req.view.render("index", ["title": "欢迎您访问我的站点！", "postCount": "100"])
    }
    
    app.get { req in
        return "It works!"
    }
    
    app.get("todo", "v2", "todolist") { req -> EventLoopFuture<[TodoModel]> in
        return req.eventLoop.submit {
            return TodoStore.shared.todos
        }
    }
    
    app.get("todo", "v2", "versions") { req -> EventLoopFuture<[RedCrystalModel]> in
        return req.eventLoop.submit {
            return RedCrystalStore.shared.redCrystalVersions
        }
    }
    
    app.get("todo", "v2", "issues") { req -> EventLoopFuture<[IssuesModel]> in
        return req.eventLoop.submit {
            return IssuesStore.shared.issuesList
        }
    }
    
    app.get("todo", "v2", "news") { req -> EventLoopFuture<[NewsModel]> in
        return req.eventLoop.submit {
            return NewsStore.shared.newsesList
        }
    }
}
