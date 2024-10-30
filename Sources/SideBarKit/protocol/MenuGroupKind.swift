import Foundation
/**
 * Each group view needs to contain this
 */
protocol MenuGroupKind {
//   var title: String { get }
   /**
    * - Fixme: ⚠️️ add doc
    */
   var groupType: any GroupKind { get } // any GroupKind.Type
}
