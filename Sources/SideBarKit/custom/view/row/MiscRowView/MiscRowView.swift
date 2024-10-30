import SwiftUI
/**
 * - Fixme: ⚠️️ This should not be selectable
 */
struct MiscRowView: View, MenuRowKind {
   /**
    * Selection
    * - Description: A binding to the currently selected index, allowing the row to update its appearance based on selection state.
    */
   let selection: Binding<CombinedIndex?>
   /**
    * Index
    * - Description: The index of the row item in the collection.
    */
   let index: CombinedIndex
   /**
    * Title text
    * - Description: The title text of the row item.
    */
   let titleText: String
   /**
    * Action
    * - Description: The action to be performed when the row item is selected.
    */
   let action: EmptyClosure
   /**
    * Icon
    * - Description: The icon associated with the row item.
    */
   let icon: String
}
/**
 * Init
 */
extension MiscRowView {
   /**
    * - Description: Initializes a new instance of `MiscRowView` with the provided miscellaneous type, index, and selection binding.
    * - Parameters:
    *   - miscType: The type of miscellaneous item to be displayed, containing the title, action, and icon information.
    *   - index: The index of the row item in the collection.
    *   - selection: A binding to the currently selected index, allowing the row to update its appearance based on selection state.
    */
   init(miscType: MiscType, index: CombinedIndex, selection: Binding<CombinedIndex?>) {
      self.init(
         selection: selection,
         index: index,
         titleText: miscType.title,
         action: miscType.action,
         icon: miscType.icon
      )
   }
}
