import SwiftUI

struct LabelRowView: View, MenuRowKind {
   let titleText: String
   let action: () -> Void
   let color: Color
   @Binding var tagCount: Int
}
/**
 * Content
 */
extension LabelRowView {
   /**
    * Body
    */
   var body: some View {
      HStack {
         Circle()
            .frame(width: 24, height: 24)
            .foregroundColor(color)
         Text(titleText)
         Spacer()
         Circle()
            .frame(width: 24, height: 24)
      }
      .padding()
      .background(Color.orange)
   }
}
#Preview {
   LabelRowView(
      titleText: "Hobby",
      action: { Swift.print("action") },
      color: .green,
      tagCount: .constant(0)
   )
}