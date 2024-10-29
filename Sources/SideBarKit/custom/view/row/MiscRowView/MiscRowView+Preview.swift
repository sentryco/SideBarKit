import SwiftUI
/**
 * Preview
 */
#Preview {
   PreviewContainer {
      MiscRowView(
         selected: .constant(.init()),
         titleText: "Prefs",
         action: { Swift.print("action") },
         icon: "heart"
      )
      .padding(16)
      .background(Color.blackOrWhite.opacity(1)) // Color.blackOrWhite
      #if os(macOS)
      .padding(.horizontal)
      #endif
   }
   .environment(\.colorScheme, .dark)
}

