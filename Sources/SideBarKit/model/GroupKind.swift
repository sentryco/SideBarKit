import Foundation
/**
 * - Fixme: ⚠️️ maybe use some sort of generic here? check with copilot
 * - Fixme: ⚠️️ add description
 */
protocol GroupKind: CaseIterable {
   /*static var index: Int { get }*/
   /**
    * - Fixme: ⚠️️ add doc
    */
   static var title: String { get }
   /**
    * - Fixme: ⚠️️ add doc
    */
   static func getItem(item: Self/*, index: Int*/) -> any RowKind
}
extension GroupKind {
   /**
    * - Fixme: ⚠️️ add doc
    */
   static var items: [RowKind] {
      Self.allCases.enumerated().map {
         getItem(item: $0.element/*, index: $0.offset*/)
      }
   }
}
/**
 * - Abstract: This struct represents the data for the top and bottom menues, including the filter on credential-types and the misc items like prefs, favs, archived, and trash.
 * - Description: This struct organizes the menu data into two main categories: top and bottom. The top menu typically contains items related to credential types, while the bottom menu includes miscellaneous items such as preferences, favorites, archived items, and trash.
 */
typealias GroupKinds = [any GroupKind.Type]
