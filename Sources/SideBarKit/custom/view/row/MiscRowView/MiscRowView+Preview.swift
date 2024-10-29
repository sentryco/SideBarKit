import SwiftUI
/**
 * Preview
 */
#Preview {
   PreviewContainer {
      MiscRowView(
         selection: .constant(.init(row: 0, column: 0)),
         index: .init(row: 0, column: 0),
         selected: .constant(.init()),
         uuid: .init(),
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

