import SwiftUI
struct game_variable{
    var isplaying=false
    var show_instruction=false
    var topic_len=[Int]()
    var topics = [Substring]()
    var topic=""
    var decided_len=0   //user choose the len of the topic
    var iscorrect:Bool=false
    var inputs = [Substring]()
//the color of not correct.correct,not exist
    var correct_color = Color(.sRGB, red: 0, green: 1,blue: 0)
    var incorrect_color = Color(.sRGB, red: 1, green: 1,blue: 1)
    var wrong_pos_color = Color(.sRGB, red: 1, green: 0,blue: 0)
//
//the pos of not correct.correct,not exist
    //the array of the correct pos,correct char
    var correct=[Substring]()
    //the array of the wrong pos,correct char
    var wrong_pos=[Substring]()
    //the array of the char never existed in the topic
    var never_exist=[Substring]()
//
    mutating func reset(){
        isplaying=false
        show_instruction=false
        topic_len=[Int]()
        topics = [Substring]()
        topic=""
        decided_len=0
        correct_color = Color(.sRGB, red: 0, green: 1,blue: 0)
        incorrect_color = Color(.sRGB, red: 1, green: 1,blue: 1)
        wrong_pos_color = Color(.sRGB, red: 1, green: 0,blue: 0)
        iscorrect=false
        inputs = [Substring]()
        correct=[Substring]()
        wrong_pos=[Substring]()
        never_exist=[Substring]()
    
    }
}
