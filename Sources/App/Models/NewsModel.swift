//
//  ArticleModel.swift
//  BlogAppSwiftUI
//
//  Created by Roman Luzgin on 21.07.21.
//

import Fluent
import Vapor

// 校友服务平台 for testing
// 搭建校友服务平台，增进校友对母校的归属感和向心力
final class NewsModel: Model, Content {
    init() {}
    
    
    static let schema = "news_schema"
    @Field(key: "id")
    var id: Int?
    
    @Field(key: "date")
    var date: String
    
    @Field(key: "theme")
    var theme: String
    
    @Field(key: "news")
    var news: String
    
    init(id: Int? = nil, date: String?, theme: String?, news: String?) {
        self.id = id ?? -1
        self.date = date ?? ""
        self.theme = theme ?? ""
        self.news = news ?? ""
    }
}

var newsList: [NewsModel] = []

