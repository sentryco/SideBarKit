import SwiftUI
/**
 * Preview
 * - Description: Provides a preview of the `MenuTagView` component, 
 *                showcasing its appearance with a randomly generated 
 *                item count.
 * - Fixme: ⚠️️ Maybe use the bg color that is used in the menu?
 */
#Preview(traits: .fixedLayout(width: 300, height: 300)) {
   PreviewContainer {
      HStack {
         Spacer()
         MenuTagView(title: "\(Int.random(in: 4...144))", isSelected: false) // - Fixme: ⚠️️ add random number, to test different sizes etc
            .padding(16)
         Spacer()
      } // .padding()
      .background(Color.blackOrWhite.opacity(1))
      #if os(macOS)
      .padding(.horizontal)
      #endif
   }
   .environment(\.colorScheme, .dark)
}
