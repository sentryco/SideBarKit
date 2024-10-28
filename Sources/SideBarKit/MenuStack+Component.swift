import SwiftUI

extension MenuStack {
   /**
    * scrollStack
    * - Fixme: ⚠️️ use better foreach here
    */
   var scrollStack: some View {
      ScrollableVStack {
         content
      }
   }
   @ViewBuilder var content: some View {
      ForEach(groups.indices, id: \.self) { (_ i: Int) in
         let groupType: any GroupKind.Type = groups[i]
         MenuGroupView.init(groupType: groupType)
      }
   }
}
 
