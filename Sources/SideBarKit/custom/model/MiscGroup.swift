import Foundation
/**
 * - Fixme: ⚠️️ move to example project?
 */
enum MiscGroup: GroupKind {
   static let title: String = "Misc"
   case prefs, all, favorites
}
extension MiscGroup {
   // Custom implementation
   static func getItem(item: Self) -> any RowKind {
      switch item {
      case .prefs: return MiscType(title: "Preferences", icon: "heart")
      case .all: return FilteringType(icon: "heart", title: "All items", tag: .constant(0))
      case .favorites: return FilteringType(icon: "heart", title: "Favourites", tag: .constant(0))
      }
   }
}
