using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace AutoSut
{
    public partial class RoboticSuturing : Form
    {
        string RxString;
        Boolean waitingOnCmdComplete = false;

        #region Initialization and enabling
        public RoboticSuturing()
        {
            try
            {
                InitializeComponent();
                enableOptions(false);
                comCombo.SelectedItem = "COM9";
            }
            catch (Exception ex)
            {
                textBox1.AppendText(ex.Message);
            }
        }

        private void enableOptions(Boolean enable)
        {
            try
            {
                closeGrip.Enabled = enable;
                pitchNum.Enabled = enable;
                eeNum.Enabled = enable;
                bodRollNum.Enabled = enable;

                toggleGripLab.Enabled = enable;
                ToggleNeedleLab.Enabled = enable;
                pitchLab.Enabled = enable;
                eeLab.Enabled = enable;
                bodRolllab.Enabled = enable;

                b_CCW.Enabled = enable;
                b_CW.Enabled = enable;
                e_CCW.Enabled = enable;
                e_CW.Enabled = enable;

                needleToggleRadio.Enabled = enable;
                needleDropRadio.Enabled = enable;

                openGrip.Enabled = enable;
                closeGrip.Enabled = enable;
                halfGrip.Enabled = enable;
                resetBtn.Enabled = enable;
            }
            catch (Exception ex)
            {
                textBox1.AppendText(ex.Message);
            }
        }

        private void comCombo_SelectedValueChanged(object sender, EventArgs e)
        {
            try
            {
                if (serialPort1.IsOpen)
                {
                    stopSerial();
                    startSerial();
                }
            }
            catch (Exception ex)
            {
                textBox1.AppendText(ex.Message);
            }
        }
        #endregion

        #region UI options - buttons and checkboxes
        private void startBtn_Click(object sender, EventArgs e)
        {
            try
            {
                startSerial();
            }
            catch (Exception ex)
            {
                textBox1.AppendText(ex.Message);
            }
        }

        private void stopBtn_Click(object sender, EventArgs e)
        {
            try
            {
                stopSerial();
            }
            catch (Exception ex)
            {
                textBox1.AppendText(ex.Message);
            }
        }

        private void startSerial()
        {
            try
            {
                textBox1.Clear();
                waitingOnCmdComplete = false;
                try
                {
                    serialPort1.PortName = comCombo.Text;
                    serialPort1.BaudRate = 57600;

                    serialPort1.Open();

                    sendSerialCommand(new char[] {'C', ',' , 'A', ',',  '\n',});
                }
                catch (Exception ex)
                {
                    textBox1.AppendText(ex.Message);
                    return;
                }
                if (serialPort1.IsOpen)
                {
                    textBox1.Clear();
                    startBtn.Enabled = false;
                    stopBtn.Enabled = true;
                    enableEntry(true);
                    textBox1.ReadOnly = false;
                    ToggleNeedleLab.Enabled = true;
                    enableOptions(true);

                    textBox1.AppendText("Serial port open, ready for action\n");
                }
            }
            catch (Exception ex)
            {
                textBox1.AppendText(ex.Message);
            }
        }

        private void stopSerial()
        {
            try
            {
                if (serialPort1.IsOpen)
                {
                    waitingOnCmdComplete = false;
                    serialPort1.Close();
                    startBtn.Enabled = true;
                    stopBtn.Enabled = false;
                    enableEntry(false);
                    textBox1.Clear();
                    textBox1.ReadOnly = true;
                    ToggleNeedleLab.Enabled = false;
                    enableOptions(false);
                }
            }
            catch (Exception ex)
            {
                textBox1.AppendText(ex.Message);
            }
        }
        
        private void debugShow_CheckedChanged(object sender, EventArgs e)
        {
            try
            {
                textBox1.Visible = debugShow.Checked;
            }
            catch (Exception ex)
            {
                textBox1.AppendText(ex.Message);
            }
        }

        private void debugShow_CheckedChanged_1(object sender, EventArgs e)
        {
            try
            {
                textBox1.Visible = debugShow.Checked;
            }
            catch (Exception ex)
            {
                textBox1.AppendText(ex.Message);
            }
        }

        private void debugShow_CheckedChanged_2(object sender, EventArgs e)
        {
            try
            {
                textBox1.Visible = debugShow.Checked;
            }
            catch (Exception ex)
            {
                textBox1.AppendText(ex.Message);
            }
        }

        private void resetBtn_Click(object sender, EventArgs e)
        {
            try
            {
                sendSerialCommand('*');
                textBox1.Clear();
            }
            catch (Exception ex)
            {
                textBox1.AppendText(ex.Message);
            }
        }

        private void RoboticSuturing_FormClosing(object sender, FormClosingEventArgs e)
        {
            try
            {
                if (serialPort1 != null && serialPort1.IsOpen) serialPort1.Close();
            }
            catch (Exception ex)
            {
                textBox1.AppendText(ex.Message);
            }
        }

        private void openGrip_CheckedChanged(object sender, EventArgs e)
        {
            try
            {
                if (openGrip.Checked)
                    closeGrip.Checked = false;
            }
            catch (Exception ex)
            {
                textBox1.AppendText(ex.Message);
            }
        }

        private void closeGrip_CheckedChanged(object sender, EventArgs e)
        {
            try
            {
                if (closeGrip.Checked)
                    openGrip.Checked = false;
            }
            catch (Exception ex)
            {
                textBox1.AppendText(ex.Message);
            }
        }
        #endregion

        #region Serial Dealings
        #region Arduino Output
        private void serialPort1_DataReceived(object sender, System.IO.Ports.SerialDataReceivedEventArgs e)
        {
            try
            {
                RxString = serialPort1.ReadExisting();
                this.Invoke(new EventHandler(DisplayText));
            }
            catch (Exception ex)
            {
                textBox1.AppendText(ex.Message);
            }
        }

        private void serialPort1_ErrorReceived(object sender, System.IO.Ports.SerialErrorReceivedEventArgs e)
        {
            try
            {
                textBox1.AppendText(e.ToString());
            }
            catch (Exception ex)
            {
                textBox1.AppendText(ex.Message);
            }
        }

        private void DisplayText(object sender, EventArgs e)
        {
            try
            {
                handleArduinoOutput();
                textBox1.AppendText(RxString);
            }
            catch (Exception ex)
            {
                textBox1.AppendText(ex.Message);
            }
        }

        private void handleArduinoOutput()
        {
            try
            {
                if (RxString.Contains("ERR"))
                {
                    waitingOnCmdComplete = false;
                }

                String[] entries = RxString.Split('\n');
                for (int i = 0; i < entries.Length; i++)
                {
                    String[] param = entries[i].Split(',');
                    if ((param[0] == "POS" || param[0] == "pos") && param.Length > 2)
                    {
                        if (param[1] == "p" || param[1] == "P")
                        {
                            pitchNum.Value = Convert.ToDecimal(param[2]);
                            waitingOnCmdComplete = false;
                        }
                        if (param[1] == "w" || param[1] == "W" || param[1] == "WR" || param[1] == "wr")
                        {
                            eeNum.Value = Convert.ToDecimal(param[2]);
                            waitingOnCmdComplete = false;
                        }
                        if (param[1] == "o" || param[1] == "O" || param[1] == "OR" || param[1] == "or")
                        {
                            bodRollNum.Value = Convert.ToDecimal(param[2]);
                            waitingOnCmdComplete = false;
                        }
                        if (param[1] == "g" || param[1] == "G")
                        {
                            waitingOnCmdComplete = false;
                        }
                        if (param[1] == "n" || param[1] == "N")
                        {
                            waitingOnCmdComplete = false;
                        }
                    }
                }

                if (!waitingOnCmdComplete)
                    enableEntry(true);
            }
            catch (Exception ex)
            {
                textBox1.AppendText(ex.Message);
            }
        }
        #endregion

        #region Arduino Input
        private Boolean sendSerialCommand(char[] desVal)
        {
            try
            {
                // If the port is closed, don't try to send a character.
                if (serialPort1 == null || !serialPort1.IsOpen)
                {
                    textBox1.AppendText("Serial port is not open");
                    return false;
                }

                serialPort1.Write(desVal, 0, desVal.Length);
                waitingOnCmdComplete = true;

                return true;
            }
            catch (Exception ex)
            {
                textBox1.AppendText(ex.Message);
                return false;
            }
        }

        private Boolean sendSerialCommand(char cmd)
        {
            try
            {
                // If the port is closed, don't try to send a character.
                if (serialPort1 == null || !serialPort1.IsOpen)
                {
                    textBox1.AppendText("Serial port is not open");
                    return false;
                }

                // If the port is Open, declare a char[] array with one element.
                char[] buff = new char[1];

                // Load element 0 with the key character.
                buff[0] = cmd;

                // Send the one character buffer.
                serialPort1.Write(buff, 0, 1);

                return true;
            }
            catch (Exception ex)
            {
                textBox1.AppendText(ex.Message);
                return false;
            }
        }
        #endregion
        #endregion

        #region Helper Commands
        private char[] getValue(int input)
        {
            try
            {
                int one = input / 100;
                int two = (input - one * 100) / 10;
                int three = (input - one * 100 - two * 10);
                char[] ret;
                if (one == 0)
                {
                    if (two == 0)
                        ret = new char[1] { toChar(three) };
                    else
                        ret = new char[2] { toChar(two), toChar(three) };
                }
                else
                    ret = new char[3] { toChar(one), toChar(two), toChar(three) };
                return ret;
            }
            catch (Exception ex)
            {
                textBox1.AppendText(ex.Message);
                return new char[1] { '0' };
            }
        }

        private char toChar(int i)
        {
            try
            {
                if (i == 0)
                    return '0';
                if (i == 1)
                    return '1';
                if (i == 2)
                    return '2';
                if (i == 3)
                    return '3';
                if (i == 4)
                    return '4';
                if (i == 5)
                    return '5';
                if (i == 6)
                    return '6';
                if (i == 7)
                    return '7';
                if (i == 8)
                    return '8';
                if (i == 9)
                    return '9';
                return '0';
            }
            catch (Exception ex)
            {
                textBox1.AppendText(ex.Message);
                return '0';
            }
        }
        #endregion

        private void bodGo_Click(object sender, EventArgs e)
        {
            try
            {
                enableEntry(false);
                waitingOnCmdComplete = true;
                if (Convert.ToInt32(bodRollNum.Value) > 360)
                {
                    bodRollNum.Value = Convert.ToDecimal(360);
                }
                char[] desVal = getValue(Convert.ToInt32(bodRollNum.Value));
                char dir = (b_CW.Checked ? '-' : '+');
                if (desVal.Length == 1)
                    sendSerialCommand(new char[] { 'O', 'R', ',', dir, 'D', ',', desVal[0], '\n' });
                else if (desVal.Length == 2)
                    sendSerialCommand(new char[] { 'O', 'R', ',', dir, 'D', ',', desVal[1], desVal[0], '\n' });
                else if (desVal.Length == 3)
                    sendSerialCommand(new char[] { 'O', 'R', ',', dir, 'D', ',', desVal[0], desVal[1], desVal[2], '\n' });
            }
            catch (Exception ex)
            {
                textBox1.AppendText(ex.Message);
            }
        }

        private void enableEntry(Boolean enable)
        {
            try
            {
                enable = true;
                bodGo.Enabled = enable;
                pitchGo.Enabled = enable;
                eeGo.Enabled = enable;
                toggleGo.Enabled = enable;
                gripGo.Enabled = enable;
            }
            catch (Exception ex)
            {
                textBox1.AppendText(ex.Message);
            }
        }

        private void pitchGo_Click(object sender, EventArgs e)
        {
            try
            {
                enableEntry(false);
                waitingOnCmdComplete = true;
                if (Convert.ToInt32(pitchNum.Value) > 77)
                {
                    pitchNum.Value = Convert.ToDecimal(77);
                } 
                else if (Convert.ToInt32(pitchNum.Value) < 6)
                {
                    pitchNum.Value = Convert.ToDecimal(6);
                }
                char[] desVal = getValue(Convert.ToInt32(pitchNum.Value));
                if (desVal.Length == 1)
                    sendSerialCommand(new char[] { 'P', ',', '+', 'D', ',', desVal[0], '\n' });
                else if (desVal.Length == 2)
                    sendSerialCommand(new char[] { 'P', ',', '+', 'D', ',', desVal[0], desVal[1], '\n' });
                else if (desVal.Length == 3)
                    sendSerialCommand(new char[] { 'P', ',', '+', 'D', ',', desVal[0], desVal[1], desVal[2], '\n' });
            }
            catch (Exception ex)
            {
                textBox1.AppendText(ex.Message);
            }
        }

        private void eeGo_Click(object sender, EventArgs e)
        {
            try
            {
                enableEntry(false);
                waitingOnCmdComplete = true;
                if (Convert.ToInt32(eeNum.Value) > 360)
                {
                    eeNum.Value = Convert.ToDecimal(360);
                }
                char[] desVal = getValue(Convert.ToInt32(eeNum.Value));
                char dir = (e_CW.Checked ? '+' : '-');
                if (desVal.Length == 1)
                    sendSerialCommand(new char[] { 'W', 'R', ',', dir, 'D', ',', desVal[0], '\n' });
                else if (desVal.Length == 2)
                    sendSerialCommand(new char[] { 'W', 'R', ',', dir, 'D', ',', desVal[0], desVal[1], '\n' });
                else if (desVal.Length == 3)
                    sendSerialCommand(new char[] { 'W', 'R', ',', dir, 'D', ',', desVal[0], desVal[1], desVal[2], '\n' });
            }
            catch (Exception ex)
            {
                textBox1.AppendText(ex.Message);
            }
        }

        private void gripGo_Click(object sender, EventArgs e)
        {
            try
            {
                enableEntry(false);
                waitingOnCmdComplete = true;
                if (openGrip.Checked)
                {
                    sendSerialCommand(new char[] { 'G', ',', 'O', '\n' });
                }
                else if (closeGrip.Checked)
                {
                    sendSerialCommand(new char[] { 'G', ',', 'C', '\n' });
                }
                else if (halfGrip.Checked)
                {
                    sendSerialCommand(new char[] { 'G', ',', '+', ',', '1', '1', '0', '\n' });
                }
                else
                {
                    enableEntry(true);
                    waitingOnCmdComplete = false;
                }
            }
            catch (Exception ex)
            {
                textBox1.AppendText(ex.Message);
            }
        }

        private void toggleGo_Click(object sender, EventArgs e)
        {
            try
            {
                enableEntry(false);
                waitingOnCmdComplete = true;
                if(needleToggleRadio.Checked)
                    sendSerialCommand(new char[] { 'N', ',', 'T', '\n' }); //toggleNeedle
                else if (needleDropRadio.Checked)
                    sendSerialCommand(new char[] { 'N', ',', 'D', '\n' }); //toggleNeedle

            }
            catch (Exception ex)
            {
                textBox1.AppendText(ex.Message);
            }
        }

        private void bodRolllab_Click(object sender, EventArgs e)
        {
            try
            {
                sendSerialCommand(new char[] { 'C', ',', 'O', '\n' });
            }
            catch (Exception ex)
            {
                textBox1.AppendText(ex.Message);
            }
        }

        private void pitchLab_Click(object sender, EventArgs e)
        {
            try
            {
                sendSerialCommand(new char[] { 'C', ',', 'P', '\n' });
            }
            catch (Exception ex)
            {
                textBox1.AppendText(ex.Message);
            }
        }

        private void eeLab_Click(object sender, EventArgs e)
        {
            try
            {
                sendSerialCommand(new char[] { 'C', ',', 'W', '\n' });
            }
            catch (Exception ex)
            {
                textBox1.AppendText(ex.Message);
            }
        }
        

    }
}




