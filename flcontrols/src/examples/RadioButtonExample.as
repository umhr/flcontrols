package examples 
{
    import flash.text.TextFieldAutoSize;
    import flash.display.Sprite;
    import flash.events.MouseEvent;
    import fl.controls.RadioButton;
    import fl.controls.RadioButtonGroup;
    import fl.controls.Label;
    import fl.controls.Button;
    
    public class RadioButtonExample extends Sprite
    {
        private var j:uint;
        private var padding:uint = 10;
        private var currHeight:uint = 0;
        private var verticalSpacing:uint = 30;

        private var rbg:RadioButtonGroup;
        private var questionLabel:Label;
        private var answerLabel:Label;        
        private var question:String = "What day is known internationally as Speak Like A Pirate Day?"
        private var answers:Array = [ "August 12", "March 4", "September 19", "June 22" ];
        
        public function RadioButtonExample() {
            setupQuiz();    
        }
        private function setupQuiz():void {
            setupQuestionLabel();
            setupRadioButtons();
            setupButton();
            setupAnswerLabel();
        }
        private function setupQuestionLabel():void {
            questionLabel = new Label();
            questionLabel.text = question;
            questionLabel.autoSize = TextFieldAutoSize.LEFT;
            questionLabel.move(padding,padding + currHeight);
            
            currHeight += verticalSpacing;
            addChild(questionLabel);
        }
        private function setupAnswerLabel():void {
            answerLabel = new Label();
            answerLabel.autoSize = TextFieldAutoSize.LEFT;
            answerLabel.move(padding + 120,padding + currHeight);
            
            addChild(answerLabel);            
        }
        private function setupRadioButtons():void {
            rbg = new RadioButtonGroup("question1");
            createRadioButton(answers[0], rbg);
            createRadioButton(answers[1], rbg);
            createRadioButton(answers[2], rbg);
            createRadioButton(answers[3], rbg);
        }
        private function setupButton():void {
            var b:Button = new Button();
            b.move(padding,padding + currHeight);
            b.label = "Check Answer";
            b.addEventListener(MouseEvent.CLICK,checkAnswer);
            
            addChild(b);
        }
        private function createRadioButton(rbLabel:String,rbg:RadioButtonGroup):void {
            var rb:RadioButton = new RadioButton();
            rb.group = rbg;
            rb.label = rbLabel;
            rb.move(padding, padding + currHeight);
            addChild(rb);

            currHeight += verticalSpacing;
        }
        private function checkAnswer(e:MouseEvent):void {
            if(!rbg.selection.label) answerLabel.text = "Select an answer.";
            else {
                var resultStr:String = rbg.selection.label == answers[2] ? "Correct" : "Incorrect";
                answerLabel.text = resultStr;
            }
        }
    }
}