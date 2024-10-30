import SwiftUI
/**
 * Content
 */
extension MenuGroupView {
   /**
    * Content
    * - Fixme: ⚠️️ add description
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
      MenuHeaderView(
         text: groupType.title,
         isOn: $isOn
      )
      .padding(.vertical)
   }
   /**
    * rowItems
    * - Fixme: ⚠️️ add animation to the isON toggeling
    * - Fixme: ⚠️️ use better forloop
    */
   @ViewBuilder var rowItems: some View {
      if !isOn { // Toggle visibility via the arrow icon
         VStack(/*spacing: .zero*/) { // Measure.defaultDoubleSpacing
            // Iterates through each element in the top section of the menu model, along with its index
            ForEach(Array(groupType.items.enumerated()), id: \.offset) { i, element in
               rowItem(
                  rowItem: element,
                  index: .init(row: i, column: index)
               )  
            }
         }
      }
   }
}
