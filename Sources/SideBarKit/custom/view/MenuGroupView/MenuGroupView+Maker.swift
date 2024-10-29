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
    */
   @ViewBuilder func rowItem(rowItem: RowKind/*, index: Int*/) -> some View {
      switch rowItem {
      case let labelType as LabelType:
         LabelRowView(labelType: labelType, selected: self.$selected/*, isSelected: false*/)
      case let filterType as FilteringType:
         FilterRowView(filterType: filterType/*, isSelected: false*/)
      case let miscType as MiscType:
         MiscRowView(miscType: miscType)
      default: fatalError("⚠️️ not supported")
      }
   }
}
