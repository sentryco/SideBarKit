import SwiftUI

extension MiscRowView {
   /**
    * Body
    */
   internal var body: some View {
      HStack(spacing: MenuStack.sizing.horRowSpacing) {
         self.leftSideIcon(
            isSelected: isSelected.wrappedValue,
            iconName: icon
         ) // left
         self.text(
            isSelected: isSelected.wrappedValue,
            titleText: titleText
         ) // center
         .padding(.vertical, 4) // ⚠️️ quick hack to match padding of tag height used in the other row items
         Spacer() // pin left
      }
      .buttonWrapper { // Wraps the HStack in a button-like interaction, allowing for selection and action triggering.
         selection.wrappedValue = self.index
         action()
      }
   }
}
