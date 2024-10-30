import SwiftUI
/**
 * Filter on credential-types
 * - Description: Represents a collection of `MenuItemModel` instances that correspond to different credential types, used for filtering and displaying relevant menu items in the top menu.
 * - Fixme: ⚠️️ move to example project? (probably not)
 * - Fixme: ⚠️️ move into seperate files etc 👈
 */
struct FilterGroup: GroupKind {
   /**
    * The title of the filter group, representing the type of credentials.
    */
   let title: String = "Type"
}
/**
 * Ext
 */
extension FilterGroup {
   /**
    * Represents the type of items contained within the filter group.
    */
   typealias EnumType = Items
   /**
    * Enum representing the different types of items that can be filtered.
    */
   enum Items: CaseIterable {
      case login, paymentcard, wifi, securenote, other
   }
}
