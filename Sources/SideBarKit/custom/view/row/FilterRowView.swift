import SwiftUI
// - Fixme: ⚠️️ add preview
struct FilterRowView: View, MenuRowKind {
   let titleText: String
   let iconName: String
   let action: () -> Void // (Binding or closure)
   // tagCount hock (group,row) // we do wiring in the implementor. switch enum for enum etc
   @Binding var tagCount: Int
}
/**
 * Content
 */
extension FilterRowView {
   var body: some View {
      HStack {
         icon
         text
         Spacer()
         tag
      }
      .padding()
      .background(Color.yellow)
   }
}
/**
 * Component
 */
extension FilterRowView {
   var icon: some View {
      Image.init(systemName: "heart")
   }
   var text: some View {
      Text(titleText)
   }
   var tag: some View {
      Circle()
         .frame(width: 24, height: 24)
   }
}
/**
 * 
 */
#Preview {
   FilterRowView(
      titleText: "Login",
      iconName: "heart",
      action: { Swift.print("action") },
      tagCount: .constant(0)
   )
}
