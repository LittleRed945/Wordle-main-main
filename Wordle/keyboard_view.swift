import SwiftUI
struct keyboard_view:View{
    @Binding var game:game_variable
    let str:Substring
    let len:Int
    
    var body:some View{
        ZStack{
            Rectangle()
                .fill(Color.gray)
                .frame(width: CGFloat(len)*20, height:25)
            Button(action: {
                if str.lowercased() == "Delete".lowercased(){
                    if game.inputs.count > 0{
                        game.inputs.popLast()
                    }
                    
                }else if str.lowercased() == "Enter".lowercased(){
                    let word = game.inputs.joined(separator: "").lowercased()
                }else{
                    if 5>game.inputs.count{
                        game.inputs.append(str)
                    }
                    
                }
            }, label: {
                Text(str).font(.system(size: CGFloat(20/len)))
                    .foregroundColor(.white)
            })
        }
        

    }
    
}
