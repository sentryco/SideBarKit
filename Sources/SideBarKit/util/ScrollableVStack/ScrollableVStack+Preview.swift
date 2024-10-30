import SwiftUI
/**
 * Preview
 * - Description: Provides a preview of the ScrollableVStack component, displaying a list of items with dynamic content.
 */
#Preview {
   ScrollableVStack {
      ForEach(1...50, id: \.self) { index in
         Text("Item \(index)")
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color.blue.opacity(0.2))
            .cornerRadius(8)
      }
   }
}