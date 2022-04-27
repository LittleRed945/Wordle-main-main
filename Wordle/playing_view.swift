import SwiftUI
struct playing_view:View{
    @Binding var game:game_variable
    var body: some View {
    VStack {
        if !game.topics.isEmpty {
        Text("Wordle").font(.title)
            .fontWeight(.heavy)
            .foregroundColor(Color.red)
        HStack{
            
            //color picker
            ColorPicker("Correct", selection: $correct_color)
            ColorPicker("Wrong", selection: $incorrect_color)
            ColorPicker("Wrong position", selection: $wrong_pos_color)
            //
        }
        
            Slider(value: $game.topic_len, in: 3...8,step:1).onChange(of: game.topic_len, perform: {newValue in
                let content = readFile(topic_len: game.topic_len)
                game.topics = content.split(separator: "\r\n")
                game.topic=String(game.topics.randomElement()!)
        })
            Text("len:"+String(Int(game.topic_len)))
            Text(game.topic)
            generate_board(input: game.answer)
            Text(game.answer.joined(separator: ""))
            keyboard(answer:$game.answer,topic: $topic,iscorrect:$iscorrect,correct:$correct,wrong_pos:$wrong_pos,never_exist:$never_exist)
        Button(action:  {isplaying=false}, label: {
            Image(systemName:"house.circle")
        })
    }
        
    }
    .background(Image("Wordle_background").scaledToFit())
    .onAppear {
    let content = readFile(topic_len: topic_len)
    topics = content.split(separator: "\r\n")
        topic=String(topics.randomElement()!)
        print(topics)
    }
    }
    
}
