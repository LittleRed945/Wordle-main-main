import SwiftUI
struct instruction_view:View{
    @Binding var game:game_variable
    var body:some View{
        VStack{
            Text("Guess the WORDLE in six tries.")
            Text("Each guess must be a valid five-letter word. Hit the enter button to submit.")
            Text("After each guess, the color of the tiles will change to show how close your guess was to the word.")
                 
        }
        
            .overlay(
                Button(action: {game.show_instruction=false}, label: {
                    Image(systemName: "xmark")
                })
                
            )
        

    }
    
}
