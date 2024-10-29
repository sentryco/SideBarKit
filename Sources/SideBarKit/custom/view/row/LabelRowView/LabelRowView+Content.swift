import SwiftUI
/**
 * Content
 */
extension LabelRowView {
   /**
    * Body
    */
   var body: some View {
      HStack(/*spacing: .zero*/) {
         labelColor()
         Self.text(isSelected: self.isSelected, titleText: titleText)// center
         Spacer()
         Self.rightSideTag(tagCount: $tagCount, isSelected: isSelected) // right
      }
      .buttonWrapper { // - Fixme: ⚠️️ doc this line
         selected.wrappedValue = self.uuid
         action()
      }
   }
}
/**
 * Component
 */
extension LabelRowView {
   /**
    * - Fixme: ⚠️️ This should be relative to height of parent, width should be 1:1
    */
   func labelColor() -> some View {
      Circle()
         .frame(width: 18, height: 18)
         .foregroundColor(color)
         .padding(.horizontal, 12)
   }
}


