import Foundation

protocol MenuGroupKind {
//   var title: String { get }
   var groupType: any GroupKind.Type { get }
}
