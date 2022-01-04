//
//  ArticleStore.swift
//  BlogAppSwiftUI
//
//  Created by Roman Luzgin on 21.07.21.
//

import Contentful
import Foundation

// 问题收集拉取
class IssuesStore {
    static var shared = IssuesStore()
    var issuesList: [IssuesModel] = issueList
    
    init() {
        getArray(id: "problem") { items in
            items.forEach { (item) in
                self.issuesList.append(
                    IssuesModel(id: item.fields["id"] as? String,
                                title: item.fields["title"] as? String,
                                date: item.fields["date"] as? String,
                                description: item.fields["description"] as? String,
                                images: item.fields["images"] as? [String],
                                resolved: item.fields["resolved"] as? Bool,
                                reference: item.fields["reference"] as? [String],
                                attachment: item.fields["attachment"] as? [String])
                )
            }
        }
    }
}
