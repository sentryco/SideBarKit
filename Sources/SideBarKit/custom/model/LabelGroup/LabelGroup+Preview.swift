import SwiftUI
/**
 * - Description: Provides a preview environment for the LabelGroup, showcasing the UI components and layout.
 */
#Preview {
   ZStack {
      Color.whiteOrBlack
         .edgesIgnoringSafeArea(.all)
      MenuGroupView(
         selection: .constant(.init(group: 0, item: 0)),
         index: 2,
         groupType: LabelGroup()//,
         //         selected: .constant(.init())
      )
      .padding()
      .background(Color.blackOrWhite)
      .environment(\.colorScheme, .dark)
   }
}

