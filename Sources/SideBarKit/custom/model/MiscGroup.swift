import SwiftUI
import HybridColor
/**
 * - Fixme: ⚠️️ move to example project?
 */
enum MiscGroup: GroupKind {
//   static var index: Int { 1 }
   static let title: String = "Misc"
   case all, favorites, trash, archived, prefs
}
extension MiscGroup {
   /**
    * Custom implementation
    */
   static func getItem(item: Self/*, index: Int*/) -> any RowKind {
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
#Preview {
   ZStack {
      Color.whiteOrBlack
         .edgesIgnoringSafeArea(.all)
      MenuGroupView(groupType: MiscGroup.self, selected: .constant(.init()))
         .padding()
         .background(Color.blackOrWhite)
         .environment(\.colorScheme, .dark)
   }
}
