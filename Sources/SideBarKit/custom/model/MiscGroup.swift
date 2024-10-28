import SwiftUI
import HybridColor
/**
 * - Fixme: ⚠️️ move to example project?
 */
enum MiscGroup: GroupKind {
   static let title: String = "Misc"
   case all, favorites, prefs
}
extension MiscGroup {
   // Custom implementation
   static func getItem(item: Self) -> any RowKind {
      switch item {
      case .prefs: return MiscType(title: "Preferences", icon: "heart", action: { Swift.print("action") })
      case .all: return FilteringType(icon: "heart", title: "All items", action: { Swift.print("action") }, tag: .constant(0))
      case .favorites: return FilteringType(icon: "heart", title: "Favourites", action: { Swift.print("action") }, tag: .constant(0))
      }
   }
}
#Preview {
   ZStack {
      Color.whiteOrBlack
         .edgesIgnoringSafeArea(.all)
      MenuGroupView(groupType: MiscGroup.self)
         .padding()
         .background(Color.blackOrWhite)
         .environment(\.colorScheme, .dark)
   }
}
