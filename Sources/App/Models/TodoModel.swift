import Fluent
import Vapor

final class TodoModel: Model, Content {
    init() {}
    
    static let schema = "todolist"
    
    @Field(key: "id")
    var id: String?
    
    @Field(key: "subject")
    var subject: String?
    
    @Field(key: "bodyContent")
    var bodyContent: String?
    
    @Field(key: "bodyContentType")
    var bodyContentType: String?
    
    @Field(key: "bodyLastModifiedTime")
    var bodyLastModifiedTime: String?
    
    @Field(key: "dueDate")
    var dueDate: String?
    
    @Field(key: "changeKey")
    var changeKey: String?
    
    @Field(key: "committedDay")
    var committedDay: String?
    
    @Field(key: "committedOrder")
    var committedOrder: String?
    
    @Field(key: "completedDateTime")
    var completedDateTime: String?
    
    @Field(key: "createdDateTime")
    var createdDateTime: String?
    
    @Field(key: "createdWithLocalId")
    var createdWithLocalId: String?
    
    @Field(key: "dueDateTime")
    var dueDateTime: String?
    
    @Field(key: "dueDateTimeZone")
    var dueDateTimeZone: String?
    
    @Field(key: "isIgnored")
    var isIgnored: Bool?
    
    @Field(key: "isImported")
    var isImported: Bool?
    
    @Field(key: "isReminderOn")
    var isReminderOn: Bool?
    
    @Field(key: "lastModifiedDateTime")
    var lastModifiedDateTime: String?
    
    @Field(key: "orderDateTime")
    var orderDateTime: String?
    
    @Field(key: "parentFolderId")
    var parentFolderId: String?
    
    @Field(key: "postponedDay")
    var postponedDay: String?
    
    @Field(key: "recurrenceType")
    var recurrenceType: String?
    
    @Field(key: "completingWillTriggerAnotherRecurrence")
    var completingWillTriggerAnotherRecurrence: String?
    
    @Field(key: "reminderDateTime")
    var reminderDateTime: String?
    
    @Field(key: "reminderDateTimeZone")
    var reminderDateTimeZone: String?
    
    @Field(key: "status")
    var status: String?
    
    @Field(key: "source")
    var source: String?
    
    @Field(key: "createdByRequestId")
    var createdByRequestId: String?
    
    @Field(key: "reminderType")
    var reminderType: String?
    
    @Field(key: "reminderGeoFence")
    var reminderGeoFence: String?
    
    @Field(key: "reminderPerson")
    var reminderPerson: String?
    
    @Field(key: "reminderSnoozeTimeInMinutes")
    var reminderSnoozeTimeInMinutes: String?
    
    @Field(key: "reminderIsSnoozed")
    var reminderIsSnoozed: Bool?
    
    @Field(key: "reminderReminderDateTime")
    var reminderReminderDateTime: String?
    
    @Field(key: "reminderTimezone")
    var reminderTimezone: String?
    
    @Field(key: "allExtensions")
    var allExtensions: [String]?
    
    @Field(key: "importance")
    var importance: String?
    
    @Field(key: "createdByUserId")
    var createdByUserId: String?
    
    @Field(key: "createdByUserPrincipalName")
    var createdByUserPrincipalName: String?
    
    @Field(key: "createdByUserDisplayName")
    var createdByUserDisplayName: String?
    
    @Field(key: "createdByUserSmtpAddress")
    var createdByUserSmtpAddress: String?
    
    @Field(key: "completedByUserId")
    var completedByUserId: String?
    
    @Field(key: "completedByUserDisplayName")
    var completedByUserDisplayName: String?
    
    @Field(key: "categories")
    var categories: [String]?
    
    @Field(key: "sensitivity")
    var sensitivity: String?
    
    @Field(key: "linkedEntities")
    var linkedEntities: String?
    
    @Field(key: "deltaLink")
    var deltaLink: String?
    
    public init(bodyContent: String?, bodyContentType: String?, bodyLastModifiedTime: String?, dueDate: String?, changeKey: String?, committedDay: String?, committedOrder: String?, completedDateTime: String?, createdDateTime: String?, createdWithLocalId: String?, dueDateTime: String?, dueDateTimeZone: String? = "UTC", id: String? = nil, isIgnored: Bool?, isImported: Bool?, isReminderOn: Bool?, lastModifiedDateTime: String?, orderDateTime: String?, parentFolderId: String?, postponedDay: String?, recurrenceType: String?, completingWillTriggerAnotherRecurrence: String?, reminderDateTime: String?, reminderDateTimeZone: String? = "UTC", status: String?, subject: String?, source: String?, createdByRequestId: String?, reminderType: String?, reminderGeoFence: String?, reminderPerson: String?, reminderSnoozeTimeInMinutes: String?, reminderIsSnoozed: Bool?, reminderReminderDateTime: String?, reminderTimezone: String?, allExtensions: [String]?, importance: String?, createdByUserPrincipalName: String?, createdByUserDisplayName: String?, createdByUserSmtpAddress: String?, createdByUserId: String?, completedByUserDisplayName: String?, completedByUserId: String?, categories: [String]?, sensitivity: String?, linkedEntities: String? = nil, deltaLink: String? = nil) {
            self.bodyContent = bodyContent ?? ""
            self.bodyContentType = bodyContentType ?? ""
            self.bodyLastModifiedTime = bodyLastModifiedTime ?? ""
            self.dueDate = dueDate ?? ""
            self.changeKey = changeKey ?? ""
            self.committedDay = committedDay ?? ""
            self.committedOrder = committedOrder ?? ""
            self.completedDateTime = completedDateTime ?? ""
            self.createdDateTime = createdDateTime ?? ""
            self.createdWithLocalId = createdWithLocalId ?? ""
            self.dueDateTime = dueDateTime ?? ""
            self.dueDateTimeZone = dueDateTimeZone
            self.id = id ?? ""
            self.isIgnored = isIgnored ?? false
            self.isImported = isImported ?? false
            self.isReminderOn = isReminderOn ?? false
            self.lastModifiedDateTime = lastModifiedDateTime ?? ""
            self.orderDateTime = orderDateTime ?? ""
            self.parentFolderId = parentFolderId ?? ""
            self.postponedDay = postponedDay ?? ""
            self.recurrenceType = recurrenceType ?? ""
            self.completingWillTriggerAnotherRecurrence = completingWillTriggerAnotherRecurrence ?? ""
            self.reminderDateTime = reminderDateTime ?? ""
            self.reminderDateTimeZone = reminderDateTimeZone ?? ""
            self.status = status ?? ""
            self.subject = subject ?? ""
            self.source = source ?? ""
            self.createdByRequestId = createdByRequestId ?? ""
            self.reminderType = createdByRequestId ?? ""
            self.reminderGeoFence = createdByRequestId ?? ""
            self.reminderPerson = createdByRequestId ?? ""
            self.reminderSnoozeTimeInMinutes = reminderSnoozeTimeInMinutes ?? ""
            self.reminderIsSnoozed = reminderIsSnoozed ?? false
            self.reminderReminderDateTime = reminderReminderDateTime ?? ""
            self.reminderTimezone = reminderTimezone ?? ""
            self.allExtensions = allExtensions ?? [String]()
            self.importance = importance ?? ""
            self.createdByUserPrincipalName = createdByUserPrincipalName ?? ""
            self.createdByUserDisplayName = createdByUserDisplayName ?? ""
            self.createdByUserSmtpAddress = createdByUserSmtpAddress ?? ""
            self.createdByUserId = createdByUserId ?? ""
            self.completedByUserDisplayName = completedByUserDisplayName ?? ""
            self.completedByUserId = completedByUserId ?? ""
            self.categories = categories ?? [String]()
            self.sensitivity = sensitivity ?? ""
            self.linkedEntities = linkedEntities ?? ""
            self.deltaLink = deltaLink ?? ""
        }

        public enum CodingKeys: String, CodingKey, CaseIterable {
            case bodyContent = "BodyContent"
            case bodyLastModifiedTime = "BodyLastModifiedTime"
            case dueDate = "DueDate"
            case changeKey = "ChangeKey"
            case committedDay = "CommittedDay"
            case committedOrder = "CommittedOrder"
            case completedDateTime = "CompletedDateTime"
            case createdDateTime = "CreatedDateTime"
            case createdWithLocalId = "CreatedWithLocalId"
            case dueDateTime = "DueDateTime"
            case id = "Id"
            case isIgnored = "IsIgnored"
            case isImported = "IsImported"
            case isReminderOn = "IsReminderOn"
            case lastModifiedDateTime = "LastModifiedDateTime"
            case orderDateTime = "OrderDateTime"
            case parentFolderId = "ParentFolderId"
            case postponedDay = "PostponedDay"
            case recurrence = "Recurrence"
            case reminderDateTime = "ReminderDateTime"
            case status = "Status"
            case subject = "Subject"
            case source = "Source"
            case createdByRequestId = "CreatedByRequestId"
            case allExtensions = "AllExtensions"
            case importance = "Importance"
            case createdByUser = "CreatedByUser"
            case completedByUser = "CompletedByUser"
            case categories = "Categories"
            case sensitivity = "Sensitivity"
        }
}

var todoList: [TodoModel] = []
