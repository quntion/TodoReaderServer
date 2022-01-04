import Vapor

// configures your application
public func configure(_ app: Application) throws {
    // uncomment to serve files from /Public folder
    // app.middleware.use(FileMiddleware(publicDirectory: app.directory.publicDirectory))
    
    let _ = IssuesStore.shared
    let _ = RedCrystalStore.shared
    let _ = NewsStore.shared
    let _ = TodoStore.shared
    // register routes
    try routes(app)
}
