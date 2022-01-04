//
//  ArticleStore.swift
//  BlogAppSwiftUI
//
//  Created by Roman Luzgin on 21.07.21.
//

import Contentful
import Foundation

// 红⽔晶版本更新⽇志拉取
class RedCrystalStore {
    static var shared = RedCrystalStore()
    var redCrystalVersions: [RedCrystalModel] = redCrystalVersion
    
    init() {
        getArray(id: "Log4RedCrystal") { items in
            items.forEach { (item) in
                self.redCrystalVersions.append(
                    RedCrystalModel(id: item.fields["id"] as? String,
                                    version: item.fields["version"] as? String,
                                    date: item.fields["date"] as? String,
                                    updateContent: item.fields["updateContent"] as? String)
                )
            }
        }
    }
}
