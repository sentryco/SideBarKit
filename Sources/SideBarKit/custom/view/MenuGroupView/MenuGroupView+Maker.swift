import SwiftUI
/**
 * Maker
 */
extension MenuGroupView {
   /**
    * rowItem
    * - Abstract: Create views from models
    * - Fixme: ⚠️️ Add HStack, left aligned
    * - Fixme: ⚠️️ implement isSelected index == selected etc
    * - Fixme: ⚠️️ make this static
    * - Note: index is used for keeping track of selection index etc
    * - Parameters:
    *   - rowItem: - Fixme: ⚠️️ add doc
    *   - index: - Fixme: ⚠️️ add doc
    * - Returns: - Fixme: ⚠️️ add doc
    */
   @ViewBuilder func rowItem(rowItem: RowKind, index: CombinedIndex) -> some View {
      switch rowItem {
      case let labelType as LabelType:
         LabelRowView(
            labelType: labelType,
            index: index,
            selection: self.$selection
         )
      case let filterType as FilteringType:
         FilterRowView(
            filterType: filterType,
            index: index,
            selection: self.$selection
         )
      case let miscType as MiscType:
         MiscRowView(
            miscType: miscType,
            index: index,
            selection: self.$selection
         )
      default: fatalError("⚠️️ not supported")
      }
   }
}
