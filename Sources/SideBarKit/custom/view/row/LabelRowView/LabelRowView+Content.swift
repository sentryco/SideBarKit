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
         Self.text(isSelected: isSelected, titleText: titleText)// center
         Spacer()
         Self.rightSideTag(tagCount: $tagCount, isSelected: isSelected) // right
      }
      .fixedSize(horizontal: false, vertical: true)
      .buttonWrapper(action: action) // - Fixme: ⚠️️ doc this line
     
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
         .frame(width: 20, height: 20)
         .foregroundColor(color)
//         .padding(4)
   }
}


