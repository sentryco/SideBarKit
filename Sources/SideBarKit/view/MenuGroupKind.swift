import Foundation
/**
 * Each group view needs to contain this
 */
protocol MenuGroupKind {
//   var title: String { get }
   var groupType: any GroupKind.Type { get }
}
