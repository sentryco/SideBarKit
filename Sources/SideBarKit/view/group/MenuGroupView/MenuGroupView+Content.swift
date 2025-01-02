import SwiftUI
/**
 * Content
 */
extension MenuGroupView {
   /**
    * Content
    * - Description: The main body of the MenuGroupView, 
    *                displaying the group title and row items.
    */
   public var body: some View {
      VStack(spacing: MenuStack.sizing.groupSpace) {
         groupTitle
         rowItems
      }
   }
   /**
    * groupTitle
    * - Description: The title of the group.
    */
   public var groupTitle: some View {
      MenuHeaderView(
         text: groupType.title,
         isOn: $isOn
      )
      .background(isTestingSideBar ? Color.purple : Color.clear)
   }
   /**
    * rowItems
    * - Description: The items of the group.
    * - Fixme: ⚠️️ Add animation to the isON toggeling
    * - Fixme: ⚠️️ Use better forloop, check with copilot?
    */
   @ViewBuilder public var rowItems: some View {
      if !isOn { // Toggle visibility via the arrow icon
         VStack(spacing: MenuStack.sizing.rowSpace) {
            // Iterates through each element in the top section of the menu model, along with its index
            let items = Array(groupType.items.enumerated())
            ForEach(items, id: \.offset) { i, element in // - Fixme: ⚠️️ Add type?
               rowItem(
                  rowItem: element, // rowItem
                  index: .init(group: index, item: i) // store the Combined index
               )
            }
         }
         .padding(.horizontal, MenuStack.sizing.horRowPadding)
      }
   }
}
