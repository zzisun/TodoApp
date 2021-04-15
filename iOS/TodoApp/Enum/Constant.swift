//  Created by 김지선 on 2021/04/08.
import Foundation

enum StatusInfo {
    static let toDo = "To Do"
    static let inProgress = "In Progress"
    static let done = "Done"
    static let addTask = "addTask"
}

enum StatusValue {
    static let toDo = 0
    static let inProgress = 1
    static let done = 2
}

enum TitleList {
    static let ofStatus = [StatusValue.toDo:StatusInfo.toDo, StatusValue.inProgress:StatusInfo.inProgress, StatusValue.done:StatusInfo.done]
}

enum HTTPMethod {
    static let post = "POST"
    static let get = "GET"
    static let delete = "DELETE"
    //static let add = "ADD"
}

//MARK: -Notification.Name
extension Notification.Name {
    static let addTask = Notification.Name("addTask")
    static let requestSetupTask = Notification.Name("requestSetupTask")
    static let requestRemoveTask  = Notification.Name("requestRemoveTask")
    static let requestAddTask = Notification.Name("requestAddTask")
    static let requestMoveTask = Notification.Name("requestMoveTask")
}



