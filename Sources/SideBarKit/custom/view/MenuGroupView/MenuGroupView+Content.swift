import SwiftUI
/**
 * Content
 */
extension MenuGroupView {
   /**
    * Content
    * - Description: The main body of the MenuGroupView, displaying the group title and row items.
    */
   var body: some View {
      VStack(spacing: .zero) { // - Fixme: ⚠️️ add some sort of metric here
         groupTitle
         rowItems
      }
   }
   /**
    * groupTitle
    * - Description: The title of the group.
    * - Fixme: ⚠️️ use hstack
    */
   var groupTitle: some View {
      MenuHeaderView(
         text: groupType.title,
         isOn: $isOn
      )
      .padding(.vertical) // - Fixme: ⚠️️ add metric here?
   }
   /**
    * rowItems
    * - Description: The items of the group.
    * - Fixme: ⚠️️ add animation to the isON toggeling
    * - Fixme: ⚠️️ use better forloop
    */
   @ViewBuilder var rowItems: some View {
      if !isOn { // Toggle visibility via the arrow icon
         VStack(/*spacing: .zero*/) { // Measure.defaultDoubleSpacing
            // Iterates through each element in the top section of the menu model, along with its index
            let items = Array(groupType.items.enumerated())
            ForEach(items, id: \.offset) { i, element in // - Fixme: ⚠️️ add type
               rowItem(
                  rowItem: element, // rowItem
                  index: .init(group: index, item: i) // store the Combined index
               )  
            }
         }
      }
   }
}
