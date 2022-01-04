//
//  BaseStore.swift
//  App
//
//  Created by lory on 2022/1/4.
//

import Contentful
import Foundation

// change to your spaceID and accessToken
// you can find these in Settings -> API keys on Contentful
let spaceId = "zpr5fz22r6qz"
let accessToken = "4gVj6DBr4IjXs5Y82oUcBEZw0DPye3MYHGo7ws1wjaQ"

let client = Client(spaceId: spaceId, accessToken: accessToken)

func getArray(id: String, completion: @escaping([Entry]) -> ()) {
    let query = Query.where(contentTypeId: id)
    try! query.order(by: Ordering(sys: .updatedAt, inReverse: true)) // ordering the list of articles by created date
    query.limit(to: 1000)
    client.fetchArray(of: Entry.self, matching: query) { result in
        switch result {
            case .success(let array):
                completion(array.items)
            case .failure(let error):
                print(error)
        }
    }
}
