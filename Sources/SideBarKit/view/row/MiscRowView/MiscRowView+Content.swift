import SwiftUI

extension MiscRowView {
   /**
    * Body
    */
   internal var body: some View {
      HStack(spacing: .zero) {
         self.leftSideIcon(
            isSelected: isSelected.wrappedValue,
            iconName: icon
         ) // left
         self.text(
            isSelected: isSelected.wrappedValue,
            titleText: titleText
         )// center
         Spacer() // pin left
      }
      .buttonWrapper { // Wraps the HStack in a button-like interaction, allowing for selection and action triggering.
         selection.wrappedValue = self.index
         action()
      }
   }
}
