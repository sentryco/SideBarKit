import SwiftUI
/**
 * Preview of menustack
 */
#Preview {
   ZStack {
      Color.whiteOrBlack
         .edgesIgnoringSafeArea(.all)
      MenuStack(
         groups: [
            FilterGroup.self, // top
            MiscGroup.self, // middle
            LabelGroup.self // bottom
         ]
      )
         .padding()
         .background(Color.blackOrWhite)
         .environment(\.colorScheme, .dark)
   }
}
