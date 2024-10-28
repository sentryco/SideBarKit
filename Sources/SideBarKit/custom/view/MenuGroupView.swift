import SwiftUI
/**
 * - Abstract: Boilerplate view for the groups
 * - Note: Previews are in implementation groups
 */
struct MenuGroupView: View, MenuGroupKind {
   let groupType: any GroupKind.Type
}
/**
 * Content
 */
extension MenuGroupView {
   /**
    * Content
    */
   var body: some View {
      VStack(spacing: .zero) {
         groupTitle
         rowItems
      }
   }
   /**
    * groupTitle
    * - Fixme: ⚠️️ add the hide button
    * - Fixme: ⚠️️ use hstack
    */
   var groupTitle: some View {
      HStack {
         Text(groupType.title)
            .font(.title)
         Spacer()
      }
      .padding()
      .background(.green)
   }
   /**
    * rowItems
    */
   var rowItems: some View {
      VStack(spacing: .zero) {
         ForEach(groupType.items.indices, id: \.self) { i in
            self.rowItem(rowItem: groupType.items[i], index: i)
         }
      }
   }
}
/**
 * Maker
 */
extension MenuGroupView {
   /**
    * rowItem
    * - Fixme: ⚠️️ Add HStack, left aligned
    * - Note: index is used for keeping track of selection index etc
    */
   @ViewBuilder func rowItem(rowItem: RowKind, index: Int) -> some View {
      switch rowItem {
      case let labelType as LabelType: LabelRowView(labelType: labelType)
      case let filterType as FilteringType: FilterRowView(filterType: filterType)
      case let miscType as MiscType: MiscRowView.init(miscType: miscType)
      default: fatalError("not supported")
      }
   }
}
