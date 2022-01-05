//
//  ArticleModel.swift
//  BlogAppSwiftUI
//
//  Created by Roman Luzgin on 21.07.21.
//

import Fluent
import Vapor

// 问题收集🔍
final class IssuesModel: Model, Content {
    
    init() {}
    
    static let schema = "issues_schema"
    
    @Field(key: "id")
    var id: Int?
    
    @Field(key: "title")
    var title: String
    
    @Field(key: "date")
    var date: String
    
    @Field(key: "description")
    var description: String?
    
    @Field(key: "images")
    var images: [String]
    
    @Field(key: "resolved")
    var resolved: Bool
    
    @Field(key: "reference")
    var reference: [String]
    
    @Field(key: "attachment")
    var attachment: [String]
    
    init(id: Int? = nil, title: String?, date: String?, description: String?, images: [String]?, resolved: Bool?, reference: [String]?, attachment: [String]?) {
        self.id = id ?? 0
        self.title = title ?? ""
        self.date = date ?? ""
        self.description = description ?? ""
        self.images = images ?? [String]()
        self.resolved = resolved ?? false
        self.reference = reference ?? [String]()
        self.attachment = attachment ?? [String]()
    }
}

var issueList: [IssuesModel] = []

