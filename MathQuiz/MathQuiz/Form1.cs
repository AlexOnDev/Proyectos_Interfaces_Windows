namespace MathQuiz
{
	public partial class Form1 : Form
	{
		Random randomizer = new Random();
		int addend1, addend2;
		int minuend, subtrahend;
		int multiplicand, multiplier;
		int dividend, divisor;
		int timeLeft;

		private bool CheckTheAnswer()
		{
			if ((addend1 + addend2 == sumar.Value)
				&& (minuend - subtrahend == difference.Value)
				&& (multiplicand * multiplier == product.Value)
				&& (dividend / divisor == quotient.Value))
				return true;
			else
				return false;
		}
		public void StartTheQuiz()
		{
			addend1 = randomizer.Next(51);
			addend2 = randomizer.Next(51);

			plusLeftLabel.Text = addend1.ToString();
			plusRightLabel.Text = addend2.ToString();

			sumar.Value = 0;

			//
			minuend = randomizer.Next(1, 101);
			subtrahend = randomizer.Next(1, minuend);
			minusLeftLabel.Text = minuend.ToString();
			minusRightLabel.Text = subtrahend.ToString(); ;
			difference.Value = 0;

			//
			multiplicand = randomizer.Next(2, 11);
			multiplier = randomizer.Next(2, 11);
			timesLeftLabel.Text = multiplicand.ToString();
			timesRightLabel.Text = multiplier.ToString();
			product.Value = 0;

			//
			divisor = randomizer.Next(2, 11);
			int temporaryQuotient = randomizer.Next(2, 11);
			dividend = divisor * temporaryQuotient;
			dividedLeftLabel.Text = dividend.ToString();
			dividedRightLabel.Text = divisor.ToString();
			quotient.Value = 0;

			//
			timeLeft = 30;
			timeLabel.Text = "30 segundos";
			timer1.Start();

		}
		public Form1()
		{
			InitializeComponent();
		}


		private void startButton_Click(object sender, EventArgs e)
		{
			StartTheQuiz();
			startButton.Enabled = false;
		}

		private void timer1_Tick(object sender, EventArgs e)
		{
			if (CheckTheAnswer())
			{
				// If CheckTheAnswer() returns true, then the user 
				// got the answer right. Stop the timer  
				// and show a MessageBox.
				timer1.Stop();
				MessageBox.Show("You got all the answers right!",
								"Congratulations!");
				startButton.Enabled = true;
				timeLabel.BackColor = Label.DefaultBackColor;
			}
			else if (timeLeft > 0)
			{
				// If CheckTheAnswer() returns false, keep counting
				// down. Decrease the time left by one second and 
				// display the new time left by updating the 
				// Time Left label.
				timeLeft = timeLeft - 1;
				timeLabel.Text = timeLeft + " segundos";
				if (timeLeft <= 5)
				{
					timeLabel.BackColor = Color.Red;
				}
			}
			else
			{
				// If the user ran out of time, stop the timer, show
				// a MessageBox, and fill in the answers.
				timer1.Stop();
				timeLabel.Text = "Time's up!";
				MessageBox.Show("You didn't finish in time.", "Sorry!");
				sumar.Value = addend1 + addend2;
				difference.Value = minuend - subtrahend;
				product.Value = multiplicand * multiplier;
				quotient.Value = dividend / divisor;
				startButton.Enabled = true;
				timeLabel.BackColor = Label.DefaultBackColor;
			}
		}

		private void answer_Enter(object sender, EventArgs e)
		{
			// Select the whole answer in the NumericUpDown control.
			NumericUpDown answerBox = sender as NumericUpDown;

			if (answerBox != null)
			{
				int lengthOfAnswer = answerBox.Value.ToString().Length;
				answerBox.Select(0, lengthOfAnswer);
			}
		}
	}
}