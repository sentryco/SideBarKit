import SwiftUI
/**
 * - Fixme: ⚠️️ This should not be selectable
 */
struct MiscRowView: View, MenuRowKind {
   let titleText: String
   let action: () -> Void
   let icon: String
   let isSelected: Bool = false
}
/**
 * Init
 */
extension MiscRowView {
   init(miscType: MiscType) {
      self.init(
         titleText: miscType.title,
         action: miscType.action,
         icon: miscType.icon
      )
   }
}
