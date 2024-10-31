import SwiftUI
/**
 * Content
 */
extension LabelRowView {
   /**
    * Body
    */
   var body: some View {
      HStack(spacing: .zero) {
         labelColor()
         Self.text(isSelected: self.isSelected.wrappedValue, titleText: titleText)// center
         Spacer()
         Self.rightSideTag(tagCount: $tagCount, isSelected: isSelected.wrappedValue) // right
      }
      .buttonWrapper { // Wraps the HStack in a button-like interaction, allowing for selection and action triggering.
         selection.wrappedValue = self.index
         action()
      }
   }
}
/**
 * Component
 */
extension LabelRowView {
   /**
    * Label color
    * - Description: A circular view representing the color of the label.
    * - Fixme: ⚠️️ This should be relative to height of parent, width should be 1:1
    */
   func labelColor() -> some View {
      Circle()
         .frame(width: 18, height: 18)
         .foregroundColor(color)
         .padding(.horizontal, MenuStack.sizing.iconHorizontalPadding)
         .background(isTest ? Color.brown : Color.clear)
   }
}


