import SwiftUI

extension MiscRowView {
   /**
    * Body
    */
   var body: some View {
      HStack(spacing: .zero) {
         Self.leftSideIcon(isSelected: isSelected, iconName: icon) // left
         Self.text(isSelected: isSelected, titleText: titleText)// center
         Spacer()
      }
      .buttonWrapper { // - Fixme: ⚠️️ doc this line
         selected.wrappedValue = self.uuid
         action()
      }
   }
}
