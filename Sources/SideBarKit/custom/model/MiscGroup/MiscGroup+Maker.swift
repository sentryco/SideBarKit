import SwiftUI
/**
 * Makerr
 */
extension MiscGroup {
   /**
    * Custom implementation
    */
   /*static*/ func getItem(item: Items) -> any RowKind {
      switch item {
      case .prefs:
         return MiscType(title: "Preferences", icon: "star", action: { Swift.print("action") })
      case .all:
         return FilteringType(icon: "shield", title: "All items", action: { Swift.print("action") }, tag: .constant(29))
      case .favorites:
         return FilteringType(icon: "heart", title: "Favourites", action: { Swift.print("action") }, tag: .constant(4))
      case .trash:
         return FilteringType(icon: "trash", title: "Trash", action: { Swift.print("action") }, tag: .constant(4))
      case .archived:
         return FilteringType(icon: "lock", title: "Archived", action: { Swift.print("action") }, tag: .constant(3))
      }
   }
}

