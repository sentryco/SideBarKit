import SwiftUI

extension MiscRowView {
   /**
    * Body
    */
   var body: some View {
      HStack(spacing: .zero) {
         Self.leftSideIcon(isSelected: isSelected.wrappedValue, iconName: icon) // left
         Self.text(isSelected: isSelected.wrappedValue, titleText: titleText)// center
         Spacer()
      }
      .buttonWrapper { // Wraps the HStack in a button-like interaction, allowing for selection and action triggering.
         selection.wrappedValue = self.index
         action()
      }
   }
}
