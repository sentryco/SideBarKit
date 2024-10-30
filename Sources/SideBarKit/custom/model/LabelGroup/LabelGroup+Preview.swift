import SwiftUI
// - Fixme: ⚠️️ add darkmode modifier etc
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

