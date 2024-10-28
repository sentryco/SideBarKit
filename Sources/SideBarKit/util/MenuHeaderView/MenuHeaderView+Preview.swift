import SwiftUI
/**
 * Preview (left aligned text, right aligned drop-down-icon)
 * - Description: Provides a preview of the `MenuHeaderView` with a left-aligned text label and a right-aligned dropdown icon.
 */
#Preview(traits: .fixedLayout(width: 400, height: 300)) {
   struct DebugView: View {
      @State var isOn: Bool = false
      var body: some View {
         PreviewContainer {
            // - Fixme: ⚠️️ use const for Options?
            MenuHeaderView(text: "Options", isOn: $isOn)
               .padding(.horizontal, 16)
               .padding(.vertical, 12)
            // .padding(16)
            // .background(.gray.opacity(0.3))
               .background(Color.blackOrWhite.opacity(1))
            // .padding(.horizontal)
               #if os(macOS)
               .padding(.horizontal)
               #endif
         }
         #if os(macOS)
         .frame(maxWidth: 300)
         #endif
      }
   }
   return DebugView()
      .environment(\.colorScheme, .dark)
}
