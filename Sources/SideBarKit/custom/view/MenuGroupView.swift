import SwiftUI

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
      VStack {
         self.groupTitle(text: groupType.title)
         ForEach(groupType.items.indices, id: \.self) { i in
            self.rowItem(rowItem: groupType.items[i], index: i)
         }
      }
   }
   /**
    * topTitleText
    * - Fixme: ⚠️️ add the hide button
    * - Fixme: ⚠️️ use hstack
    */
   func groupTitle(text: String) -> some View {
      Text(text)
         .font(.title)
   }
   /**
    * rowItem
    * - Fixme: ⚠️️ add HStack, left aligned
    * - Note: index is used for keeping track of selection index etc
    */
   func rowItem(rowItem: RowKind, index: Int) -> some View {
      switch rowItem {
      case is LabelType: EmptyView()
      case is FilteringType: EmptyView()
      case is MiscType: EmptyView()
      default: fatalError("not supported")
      }
   }
}
