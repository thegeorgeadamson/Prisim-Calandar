import Foundation
import SwiftData

@Model
final class EventItem {
    @Attribute(.unique) var id: UUID
    var title: String
    var notes: String?
    var start: Date
    var end: Date
    var isAllDay: Bool
    var createdAt: Date
    var updatedAt: Date

    init(title: String, notes: String? = nil, start: Date, end: Date, isAllDay: Bool = false) {
        self.id = UUID()
        self.title = title
        self.notes = notes
        self.start = start
        self.end = end
        self.isAllDay = isAllDay
        self.createdAt = Date()
        self.updatedAt = Date()
    }
}
