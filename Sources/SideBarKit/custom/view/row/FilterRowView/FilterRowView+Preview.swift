import SwiftUI
/**
 * Preview
 * - Abstract: creats 2x2 variations. selected, unselected, dark, light?
 * - Description: Provides a preview of the MenuItemView in various states (selected/unselected) and themes (dark/light) to visualize its appearance in different UI contexts.
 * - Fixme: ⚠️️ Adjust design for macOS? okay for now?
 * - Fixme: ⚠️️ Align the tag-labels better, see legacy? make it more round, less elongated?
 */
#Preview(traits: .fixedLayout(width: 350, height: 200)) { // ⚠️️ traits only work for macOS I think
   PreviewContainer {
      FilterRowView(
         selection: .constant(.init(group: 0, item: 0)),
         index: .init(group: 0, item: 0),
//         selected: .constant(.init()),
//         uuid: .init(),
         titleText: "Menu item",
         iconName: "heart",
         action: { print("✨") },
         tagCount: .constant(5)/*, isSelected: false*/
      )  /*true*/
         .padding(16)
         .background(Color.blackOrWhite.opacity(1)) // Color.blackOrWhite
      // .frame(maxWidth: 300)
         #if os(macOS)
         .padding(.horizontal)
         #endif
   }
   .environment(\.colorScheme, .dark)
}
