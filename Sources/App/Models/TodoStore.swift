//
//  TodoStore.swift
//  NSPress
//
//  Created by lory on 21.07.21.
//

import Contentful
import Foundation

class TodoStore {
    static var shared = TodoStore()
    var todos: [TodoModel] = todoList
    init() {
        todos = []
        getArray(id: "todos") { [weak self] items in
            items.forEach { [weak self] (item) in
                self?.todos.append(
                    TodoModel(bodyContent: item.fields["bodyContent"] as? String ?? "",
                         bodyContentType: item.fields["bodyContentType"] as? String ?? "",
                         bodyLastModifiedTime: nil,
                         dueDate: nil,
                         changeKey: nil,
                         committedDay: nil,
                         committedOrder: nil,
                         completedDateTime: nil,
                         createdDateTime: nil,
                         createdWithLocalId: nil,
                         dueDateTime: nil,
                         id: item.fields["id"] as? String ?? "",
                         isIgnored: nil,
                         isImported: nil,
                         isReminderOn: nil,
                         lastModifiedDateTime: nil,
                         orderDateTime: nil,
                         parentFolderId: nil,
                         postponedDay: nil,
                         recurrenceType: nil,
                         completingWillTriggerAnotherRecurrence: nil,
                         reminderDateTime: nil,
                         status: nil,
                         subject: item.fields["subject"] as? String ?? "",
                         source: nil,
                         createdByRequestId: nil,
                         reminderType: nil,
                         reminderGeoFence: nil,
                         reminderPerson: nil,
                         reminderSnoozeTimeInMinutes: nil,
                         reminderIsSnoozed: nil,
                         reminderReminderDateTime: nil,
                         reminderTimezone: nil,
                         allExtensions: nil,
                         importance: nil,
                         createdByUserPrincipalName: nil,
                         createdByUserDisplayName: nil,
                         createdByUserSmtpAddress: nil,
                         createdByUserId: nil,
                         completedByUserDisplayName: nil,
                         completedByUserId: nil,
                         categories: nil,
                         sensitivity: nil,
                         linkedEntities: nil,
                         deltaLink: nil)
                )
            }
        }
    }
}
