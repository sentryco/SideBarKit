import SwiftUI

extension MiscRowView {
   var body: some View {
      HStack {
         iconView
         text
         Spacer()
      }
      .padding()
      .background(.teal)
   }
   var iconView: some View {
      Image.init(systemName: icon)
   }
   var text: some View {
      Text(titleText)
   }
}
