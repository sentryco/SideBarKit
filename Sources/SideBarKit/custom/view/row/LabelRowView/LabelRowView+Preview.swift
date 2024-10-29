import SwiftUI

#Preview {
   LabelRowView(
      titleText: "Hobby",
      action: { Swift.print("action") },
      color: .green,
      tagCount: .constant(0)
   )
}
