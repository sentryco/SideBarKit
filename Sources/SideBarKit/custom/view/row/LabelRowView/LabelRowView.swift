import SwiftUI
/**
 * - Fixme: ⚠️️ add description
 */
struct LabelRowView: View, MenuRowKind {
   /**
    * - Fixme: ⚠️️ add description
    */
   let selection: Binding<CombinedIndex?>
   /**
    * - Fixme: ⚠️️ add description
    */
   let index: CombinedIndex
   /**
    * - Fixme: ⚠️️ add description
    */
   let titleText: String
   /**
    * - Fixme: ⚠️️ add description
    */
   let action: EmptyClosure
   /**
    * - Fixme: ⚠️️ add description
    */
   let color: Color
   /**
    * The number of tags associated with the menu item.
    * - Abstract: This property holds the number of tags associated with the menu item.
    * - Description: Represents the number of tags associated with the menu item, which can be used to indicate the item's relevance or categorization.
    * - Note: This should be a binding
    */
   @Binding var tagCount: Int
   /**
    * - Fixme: ⚠️️ add description
    */
//   let isSelected: Bool = false
}
/**
 * Init
 */
extension LabelRowView {
   /**
    * - Fixme: ⚠️️ maybe use RowKind and add to MenuRowKind? or make it generic or something?
    * - Parameters:
    *   - labelType:  - Fixme: ⚠️️ add description
    *   - index:  - Fixme: ⚠️️ add description
    *   - selection:  - Fixme: ⚠️️ add description
    */
   init(labelType: LabelType, index: CombinedIndex, selection: Binding<CombinedIndex?>) {
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

