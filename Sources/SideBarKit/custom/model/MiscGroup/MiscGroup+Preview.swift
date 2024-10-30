import SwiftUI
/**
 * Preview
 * - Description: Provides a preview environment for the MiscGroup, showcasing the UI components and layout.
 */
#Preview {
   ZStack {
      Color.whiteOrBlack
         .edgesIgnoringSafeArea(.all)
      MenuGroupView(
         selection: .constant(.init(group: 0, item: 0)),
         index: 1,
         groupType: MiscGroup(isPrefsPresented: .constant(false))//,.self
         // selected: .constant(.init())
      )
      .padding()
      .background(Color.blackOrWhite)
      .environment(\.colorScheme, .dark)
   }
}
