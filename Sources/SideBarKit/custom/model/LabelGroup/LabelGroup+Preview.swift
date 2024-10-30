import SwiftUI
// - Fixme: ⚠️️ add darkmode modifier etc
#Preview {
   ZStack {
      Color.whiteOrBlack
         .edgesIgnoringSafeArea(.all)
      MenuGroupView(
         selection: .constant(.init(row: 0, column: 0)),
         index: 2,
         groupType: LabelGroup.self//,
         //         selected: .constant(.init())
      )
      .padding()
      .background(Color.blackOrWhite)
      .environment(\.colorScheme, .dark)
   }
}

