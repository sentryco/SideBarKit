import SwiftUI

extension ScrollableVStack {
   /**
    * body
    * - Description: The body of the ScrollableVStack.
    */
   internal var body: some View {
      ScrollView(
         .vertical, // The scroll view scrolls vertically.
         showsIndicators: showsIndicators // Indicates whether to show the scroll indicators based on the showsIndicators property
      ) {
         VStack(spacing: spacing) {
            content() // Inject content here
         }
         .padding(padding ?? EdgeInsets())
      }
   }
}
