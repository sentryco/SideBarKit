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
      .buttonWrapper { // - Fixme: ⚠️️ doc this line
//         selected.wrappedValue = self.uuid
         selection.wrappedValue = self.index
         action()
      }
   }
}
