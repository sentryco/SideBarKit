import SwiftUI

struct MiscRowView: View, MenuRowKind {
   let titleText: String
   
   let action: () -> Void
   
   let icon: String
   
   var body: some View {
      EmptyView()
   }
}
