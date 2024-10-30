import SwiftUI
/**
 * Preview
 */
#Preview {
   PreviewContainer {
      MiscRowView(
         selection: .constant(.init(group: 0, item: 0)),
         index: .init(group: 0, item: 0),
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