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
   @ViewBuilder func rowItem(rowItem: RowKind, /*uuid: UUID,*/ index: CombinedIndex) -> some View {
      switch rowItem {
      case let labelType as LabelType:
         LabelRowView(
            labelType: labelType,
//            selected: self.$selected,
            index: index,
            selection: self.$selection
         )
      case let filterType as FilteringType:
         FilterRowView(
            filterType: filterType,
//            selected: self.$selected, /*uuid: uuid,*/
            index: index,
            selection: self.$selection
         )
      case let miscType as MiscType:
         MiscRowView(
            miscType: miscType,
//            selected: self.$selected,
            index: index,
            selection: self.$selection
         )
      default: fatalError("⚠️️ not supported")
      }
   }
}
