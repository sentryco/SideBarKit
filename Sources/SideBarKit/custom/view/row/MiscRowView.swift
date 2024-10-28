import SwiftUI

struct MiscRowView: View, MenuRowKind {
   let titleText: String
   
   let action: () -> Void
   
   let icon: String
   
   var body: some View {
      HStack {
         iconView
         text
         Spacer()
      }
      .padding()
      .background(.teal)
   }
   var iconView: some View {
      Image.init(systemName: icon)
   }
   var text: some View {
      Text(titleText)
   }
}
#Preview {
   MiscRowView.init(
      titleText: "Prefs",
      action: { Swift.print("action") },
      icon: "heart"
   )
}
