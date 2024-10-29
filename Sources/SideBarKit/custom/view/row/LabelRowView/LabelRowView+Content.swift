import SwiftUI
/**
 * Content
 */
extension LabelRowView {
   /**
    * Body
    */
   var body: some View {
      HStack {
         labelColor
         Text(titleText)
         Spacer()
         Circle()
            .frame(width: 24, height: 24)
      }
      .padding()
      .background(Color.orange)
   }
   /**
    * - Fixme: ⚠️️ This should be relative to height of parent, width should be 1:1
    */
   var labelColor: some View {
      Circle()
         .frame(width: 24, height: 24)
         .foregroundColor(color)
   }
}
