import SwiftUI
/**
 * Filter on credential-types
 * - Description: Represents a collection of `MenuItemModel` instances that correspond to different credential types, used for filtering and displaying relevant menu items in the top menu.
 * - Fixme: ⚠️️ move to example project? (probably not)
 * - Fixme: ⚠️️ move into seperate files etc 👈
 */
struct FilterGroup: GroupKind {
   /*static*/ let title: String = "Type"
}
/**
 * Ext
 */
extension FilterGroup {
   typealias EnumType = Items
   enum Items: CaseIterable {
      case login, paymentcard, wifi, securenote, other
   }
}
