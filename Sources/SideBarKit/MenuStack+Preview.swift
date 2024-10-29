import SwiftUI
/**
 * Preview of menustack
 * - Fixme: ⚠️️ add the subdued background
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
