//
//  ArticleStore.swift
//  BlogAppSwiftUI
//
//  Created by Roman Luzgin on 21.07.21.
//

import Contentful
import Foundation

// 校友服务平台数据拉取 for testing
class NewsStore {
    static var shared = NewsStore()
    var newsesList: [NewsModel] = newsList
    
    init() {
        getArray(id: "swufe-tf") { items in
            items.forEach { (item) in
                self.newsesList.append(
                    NewsModel(id: item.fields["id"] as? Int,
                              date: item.fields["date"] as? String,
                              theme: item.fields["theme"] as? String,
                              news: item.fields["news"] as? String)
                )
            }
        }
    }
}
