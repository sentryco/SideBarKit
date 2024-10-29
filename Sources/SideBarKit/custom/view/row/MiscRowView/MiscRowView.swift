import SwiftUI
/**
 * - Fixme: ⚠️️ This should not be selectable
 */
struct MiscRowView: View, MenuRowKind {
   /**
    * - Fixme: ⚠️️ add doc
    */
   var selected: Binding<UUID?>
   /**
    * - Fixme: ⚠️️ add doc
    */
   let uuid: UUID/* = .init()*/
   /**
    * - Fixme: ⚠️️ add doc
    */
   let titleText: String
   /**
    * - Fixme: ⚠️️ add doc
    */
   let action: () -> Void
   /**
    * - Fixme: ⚠️️ add doc
    */
   let icon: String
   /**
    * - Fixme: ⚠️️ add doc
    */
//   let isSelected: Bool = false
}
/**
 * Init
 */
extension MiscRowView {
   /**
    * - Fixme: ⚠️️ add doc
    */
   init(miscType: MiscType, selected: Binding<UUID?>) {
      self.init(
         selected: selected, 
         uuid: .init(),
         titleText: miscType.title,
         action: miscType.action,
         icon: miscType.icon
      )
   }
}
