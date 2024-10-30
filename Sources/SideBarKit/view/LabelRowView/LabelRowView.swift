import SwiftUI
/**
 * Represents a row view that displays a label with associated properties and actions.
 */
struct LabelRowView: View, MenuRowKind {
   /**
    * Represents the selection binding for the row.
    * - Description: A binding to the currently selected index, allowing 
    *                the row to update its appearance based on selection 
    *                state.
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
    * Color
    * - Description: The color associated with the row item.
    */
   let color: Color
   /**
    * The number of tags associated with the menu item.
    * - Abstract: This property holds the number of tags associated with the menu item.
    * - Description: Represents the number of tags associated with the 
    *                menu item, which can be used to indicate the item's 
    *                relevance or categorization.
    * - Note: This should be a binding
    */
   @Binding var tagCount: Int
}
/**
 * Init
 */
extension LabelRowView {
   /**
    * - Fixme: ⚠️️ maybe use RowKind and add to MenuRowKind? or make it generic or something?
    * - Parameters:
    *   - labelType: The type of label to be displayed, containing the title, action, color, and tag information.
    *   - index: The index of the row item in the collection.
    *   - selection: A binding to the currently selected index, allowing the row to update its appearance based on selection state.
    */
   init(labelType: LabelRowModel, index: CombinedIndex, selection: Binding<CombinedIndex?>) {
      self.init(
         selection: selection,
         index: index,
         titleText: labelType.title,
         action: labelType.action,
         color: labelType.color,
         tagCount: labelType.$tag
      )
   }
}

