import SwiftUI
/**
 * Preview
 */
#Preview {
   ZStack {
      Color.whiteOrBlack
         .edgesIgnoringSafeArea(.all)
      MenuGroupView(
         selection: .constant(.init(group: 0, item: 0)),
         index: 1,
         groupType: MiscGroup()//,.self
         // selected: .constant(.init())
      )
      .padding()
      .background(Color.blackOrWhite)
      .environment(\.colorScheme, .dark)
   }
}
