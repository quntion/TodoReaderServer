//
//  ArticleModel.swift
//  BlogAppSwiftUI
//
//  Created by Roman Luzgin on 21.07.21.
//

import Fluent
import Vapor

// 红⽔晶版本更新⽇志
final class RedCrystalModel: Model, Content {
    init() {}
    
    static let schema = "redcrystal_schema"
    
    @Field(key: "id")
    var id: String?
    
    @Field(key: "version")
    var version: String?
    @Field(key: "date")
    var date: String?
    @Field(key: "updateContent")
    var updateContent: String?
    
    init(id: String? = nil, version: String?, date: String?, updateContent: String?) {
        self.id = id
        self.version = version
        self.date = date
        self.updateContent = updateContent
    }
}

var redCrystalVersion: [RedCrystalModel] = []

