import SwiftUI

extension MenuStack {
   /**
    * scrollStack
    */
   var scrollStack: some View {
      ScrollableVStack {
         ForEach(groups.indices, id: \.self) { (_ i: Int) in
            let groupType: any GroupKind.Type = groups[i]
            MenuGroupView.init(groupType: groupType)
         }
      }
   }
}
 
