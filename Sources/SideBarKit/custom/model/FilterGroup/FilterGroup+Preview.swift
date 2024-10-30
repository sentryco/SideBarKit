import SwiftUI
/**
 * - Fixme: ⚠️️ Add group preview etc
 * - Description: Provides a preview environment for the FilterGroup, showcasing the UI components and layout.
 */
#Preview {
   struct DebugContainer: View {
      @State var selected: UUID? = nil
      @State var selectedIndex: CombinedIndex? = .init(group: 0, item: 0)
      var body: some View {
         MenuGroupView(
            selection: $selectedIndex,
            index: 0,
            groupType: FilterGroup() //,
            // selected: $selected
         )
         .background(Color.blackOrWhite)
         .environment(\.colorScheme, .dark)
         .onChange(of: selected) { _, _ in
            Swift.print("selected:  \(String(describing: selected))")
         }
      }
   }
   return ZStack {
      Color.whiteOrBlack
         .edgesIgnoringSafeArea(.all)
      DebugContainer()
         .padding()
         .background(Color.blackOrWhite)
         .environment(\.colorScheme, .dark)
   }
}

