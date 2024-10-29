import SwiftUI
/**
 * Preview
 */
#Preview {
   PreviewContainer {
      LabelRowView(
         selected: .constant(nil),
         titleText: "Hobby",
         action: { Swift.print("action") },
         color: .green,
         tagCount: .constant(4)
      )
      .padding(16)
      .background(Color.blackOrWhite.opacity(1)) // Color.blackOrWhite
      #if os(macOS)
      .padding(.horizontal)
      #endif
   }
   .environment(\.colorScheme, .dark)
}
 
