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
         Self.leftSideIcon(isSelected: isSelected.wrappedValue, iconName: iconName) // left
         Self.text(isSelected: isSelected.wrappedValue, titleText: titleText)// center
         Spacer()
         Self.rightSideTag(tagCount: $tagCount, isSelected: isSelected.wrappedValue) // right
      }
      .buttonWrapper { // Wraps the HStack in a button-like interaction, allowing for selection and action triggering.
         selection.wrappedValue = self.index
         action()
      }
   }
}