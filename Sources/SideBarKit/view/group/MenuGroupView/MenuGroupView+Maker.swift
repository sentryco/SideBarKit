import SwiftUI
/**
 * Maker
 */
extension MenuGroupView {
   /**
    * rowItem
    * - Abstract: Create views from models
    * - Description: Creates a view based on the provided row item type.
    * - Fixme: ⚠️️ Add HStack, left aligned
    * - Fixme: ⚠️️ Implement isSelected index == selected etc
    * - Fixme: ⚠️️ Make this static
    * - Note: index is used for keeping track of selection index etc
    * - Parameters:
    *   - rowItem: The row item to be displayed.
    *   - index: The index of the row item.
    * - Returns: A view representing the row item.
    */
   @ViewBuilder public func rowItem(rowItem: RowKind, index: CombinedIndex) -> some View {
      switch rowItem {
      case let labelType as LabelRowModel:
         LabelRowView(
            labelType: labelType,
            index: index,
            selection: self.$selection
         )
      case let filterType as FilterRowModel:
         FilterRowView(
            filterType: filterType,
            index: index,
            selection: self.$selection
         )
      case let miscType as MiscRowModel:
         MiscRowView(
            miscType: miscType,
            index: index,
            selection: self.$selection
         )
      default: fatalError("⚠️️ not supported")
      }
   }
}
