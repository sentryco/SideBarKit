import Foundation
/**
 * - Description: This protocol defines a group of items, each represented by an enum case, with a title and methods to retrieve the items.
 */
public protocol GroupKind {
   /**
    * The type of the enum that represents the items in the group.
    * - Description: This associated type represents the type of the enum that contains the items for the group.
    */
   associatedtype EnumType: CaseIterable
   /**
    * The title of the group.
    * - Description: This property represents the title of the group, providing a human-readable name for the group.
    */
   var title: String { get }
   /**
    * Retrieves the row item for the given enum case.
    * - Parameter item: The enum case representing the item in the group.
    * - Returns: An instance of a type conforming to `RowKind` representing the row item.
    */
   func getItem(item: EnumType) -> any RowKind /*, index: Int*/
   /**
    * The items in the group.
    * - Description: This property represents an array of items conforming to `RowKind` that belong to the group.
    */
   var items: RowKinds { get }
}
extension GroupKind {
   /**
    * The items in the group.
    * - Description: This property represents an array of items conforming to `RowKind` that belong to the group.
    * - Fixme: ⚠️️ try to move items to a protocol extension
    */
   var items: RowKinds {
      EnumType.allCases.enumerated().map {
         getItem(item: $0.element)
      }
   }
}
/**
 * - Abstract: This struct represents the data for the top and bottom menues, including the filter on credential-types and the misc items like prefs, favs, archived, and trash.
 * - Description: This struct organizes the menu data into two main categories: top and bottom. The top menu typically contains items related to credential types, while the bottom menu includes miscellaneous items such as preferences, favorites, archived items, and trash.
 */
public typealias GroupKinds = [any GroupKind]
