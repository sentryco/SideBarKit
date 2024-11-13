import SwiftUI
/**
 * Preview for iPad and macOS (Dark-mode)
 * - Description: Provides a preview environment for the MenuView tailored 
 *                for iPad and macOS in dark mode, showcasing the UI 
 *                components and layout.
 * - Note: Preview works for iPhone as well (more narrow way of previewing)
 * - Fixme: ⚠️️ Make dual PreviewContainer to see both dark and light mode at the same time, maybe only for iPad and macOS? or? at least maybe horizontally stacked then? for ipad at leat?
 * - Fixme: ⚠️️ Add the subdued background
 */
#Preview(traits: .fixedLayout(width: 450, height: 550)) {
   struct DebugView: View { // ⚠️️ we use debug view to hold the states
      @State var selectedIdx: CombinedIndex? = .init(group: 0, item: 0)
      @State var isPrefsPresented: Bool = false
      var body: some View {
         sideBar
            #if os(macOS)
            .frame(maxWidth: 300) // This frame is set to a maximum width of 300 for the menu view.
            #endif
            .onChange(of: selectedIdx) { _, _ in // ⚠️️ debug
               Swift.print("selectedIdx: \(String(describing: selectedIdx))")
            }
            .onChange(of: isPrefsPresented) { _, newValue in
               print("isPrefsPresented changed to: \(newValue)")
            }
      }
      var sideBar: some View {
         ZStack(alignment: .topLeading) {
            Color.whiteOrBlack
               .edgesIgnoringSafeArea(.all)
            MenuStack(
               selectedIndex: $selectedIdx,
               groups: [
                  TopGroup(),
                  MiddleGroup(isPrefsPresented: $isPrefsPresented),
                  BottomGroup()
               ]
            )
            .padding()
            .background(Color.blackOrWhite)
            .environment(\.colorScheme, .dark)
         }
      }
   }
   return DebugView()
      .background(Color.gray.opacity(0.2)) // This is the background of the entire view, outside safearea too, Color.blackOrWhite
      .background(Color.blackOrWhite) // No effect on iPad and iPhone it seems, works now
      .environment(\.colorScheme, .dark) // .dark / .light etc
}
