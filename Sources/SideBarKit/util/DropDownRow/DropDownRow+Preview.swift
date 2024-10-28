import SwiftUI
/**
 * Preview (Dark / Light mode)
 * - Description: This section provides a preview of the DropDownRow in both dark and light modes.
 */
#Preview(traits: .fixedLayout(width: 400, height: 200)) {
   struct DebugView: View {
      @State var isOn: Bool = false // The state only works in another view, not in preview
      var body: some View {
         PreviewContainer {
            DropDownRow(title: "Options", isOn: $isOn) // Creates a DropDownRow with the title "Options" and binds its state to the isOn state variable
               .padding(16) // .init(top: 12, leading: 16, bottom: 12, trailing: 16)
               .background(Color.blackOrWhite.opacity(1)) // .background(.gray.opacity(0.3))
               .onChange(of: isOn) { (_ old: Bool, _ new: Bool) in // ⚠️️ this doesn't work in preview for some reason, - Fixme: ⚠️️ it will work if you add a debugview etc, does it work now?
                  Swift.print("old: \(old) new: \(new)")
               }
#if os(macOS)
               .padding(.horizontal)
#endif
         }
      }
   }
   return DebugView()
      .environment(\.colorScheme, .dark)
}
