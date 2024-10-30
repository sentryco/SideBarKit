import SwiftUI
/**
 * - Fixme: ⚠️️ Add group preview etc
 */
#Preview {
   struct DebugContainer: View {
      @State var selected: UUID? = nil
      @State var selectedIndex: CombinedIndex? = .init(row: 0, column: 0)
      var body: some View {
         MenuGroupView(
            selection: $selectedIndex,
            index: 0,
            groupType: FilterGroup.self//,
            //            selected: $selected
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

