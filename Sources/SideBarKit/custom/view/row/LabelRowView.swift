import SwiftUI

struct LabelRowView: View, MenuRowKind {
   let titleText: String
   let action: () -> Void
   let color: String
   @Binding var tagCount: Int
   var body: some View {
      EmptyView()
   }
}
