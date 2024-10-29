import SwiftUI
/**
 * Content
 */
extension FilterRowView {
   /**
    * Content (left-icon, title, right-tag)
    * - Abstract: This view composes the left-icon, title, and right-tag views into a horizontal stack.
    * - Description: Combines the left-side icon, title, and right-side tag into a cohesive horizontal layout, ensuring all elements are aligned and interactively responsive.
    */
   var body: some View {
      HStack(spacing: .zero) {
         Self.leftSideIcon(isSelected: isSelected, iconName: iconName) // left
         Self.text(isSelected: isSelected, titleText: titleText)// center
         Spacer()
         Self.rightSideTag(tagCount: $tagCount, isSelected: isSelected) // right
      }
      .buttonWrapper { // - Fixme: ⚠️️ doc this line
         selected?.wrappedValue = self.uuid
         action()
      }
   }
}
