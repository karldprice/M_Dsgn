namespace AutoSut
{
    partial class RoboticSuturing
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(RoboticSuturing));
            this.startBtn = new System.Windows.Forms.Button();
            this.stopBtn = new System.Windows.Forms.Button();
            this.textBox1 = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.pitchNum = new System.Windows.Forms.NumericUpDown();
            this.pitchLab = new System.Windows.Forms.Label();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.pictureBox2 = new System.Windows.Forms.PictureBox();
            this.bodRolllab = new System.Windows.Forms.Label();
            this.bodRollNum = new System.Windows.Forms.NumericUpDown();
            this.eeLab = new System.Windows.Forms.Label();
            this.eeNum = new System.Windows.Forms.NumericUpDown();
            this.toggleGripLab = new System.Windows.Forms.Label();
            this.ToggleNeedleLab = new System.Windows.Forms.Label();
            this.debugShow = new System.Windows.Forms.CheckBox();
            this.serialPort1 = new System.IO.Ports.SerialPort(this.components);
            this.panel1 = new System.Windows.Forms.Panel();
            this.b_CCW = new System.Windows.Forms.RadioButton();
            this.b_CW = new System.Windows.Forms.RadioButton();
            this.panel3 = new System.Windows.Forms.Panel();
            this.e_CCW = new System.Windows.Forms.RadioButton();
            this.e_CW = new System.Windows.Forms.RadioButton();
            this.resetBtn = new System.Windows.Forms.Button();
            this.comCombo = new System.Windows.Forms.ComboBox();
            this.bodGo = new System.Windows.Forms.Button();
            this.pitchGo = new System.Windows.Forms.Button();
            this.eeGo = new System.Windows.Forms.Button();
            this.toggleGo = new System.Windows.Forms.Button();
            this.gripGo = new System.Windows.Forms.Button();
            this.openGrip = new System.Windows.Forms.RadioButton();
            this.closeGrip = new System.Windows.Forms.RadioButton();
            this.halfGrip = new System.Windows.Forms.RadioButton();
            this.panel2 = new System.Windows.Forms.Panel();
            this.needleDropRadio = new System.Windows.Forms.RadioButton();
            this.needleToggleRadio = new System.Windows.Forms.RadioButton();
            ((System.ComponentModel.ISupportInitialize)(this.pitchNum)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bodRollNum)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.eeNum)).BeginInit();
            this.panel1.SuspendLayout();
            this.panel3.SuspendLayout();
            this.panel2.SuspendLayout();
            this.SuspendLayout();
            // 
            // startBtn
            // 
            this.startBtn.BackColor = System.Drawing.SystemColors.Control;
            this.startBtn.FlatAppearance.BorderColor = System.Drawing.Color.White;
            this.startBtn.ForeColor = System.Drawing.SystemColors.Control;
            this.startBtn.Image = ((System.Drawing.Image)(resources.GetObject("startBtn.Image")));
            this.startBtn.Location = new System.Drawing.Point(490, 47);
            this.startBtn.Name = "startBtn";
            this.startBtn.Size = new System.Drawing.Size(55, 55);
            this.startBtn.TabIndex = 0;
            this.startBtn.UseVisualStyleBackColor = false;
            this.startBtn.Click += new System.EventHandler(this.startBtn_Click);
            // 
            // stopBtn
            // 
            this.stopBtn.Enabled = false;
            this.stopBtn.ForeColor = System.Drawing.SystemColors.Control;
            this.stopBtn.Image = ((System.Drawing.Image)(resources.GetObject("stopBtn.Image")));
            this.stopBtn.Location = new System.Drawing.Point(551, 47);
            this.stopBtn.Name = "stopBtn";
            this.stopBtn.Size = new System.Drawing.Size(55, 55);
            this.stopBtn.TabIndex = 1;
            this.stopBtn.UseVisualStyleBackColor = true;
            this.stopBtn.Click += new System.EventHandler(this.stopBtn_Click);
            // 
            // textBox1
            // 
            this.textBox1.Location = new System.Drawing.Point(12, 417);
            this.textBox1.Multiline = true;
            this.textBox1.Name = "textBox1";
            this.textBox1.ScrollBars = System.Windows.Forms.ScrollBars.Vertical;
            this.textBox1.Size = new System.Drawing.Size(605, 131);
            this.textBox1.TabIndex = 2;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Perpetua Titling MT", 18F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(13, 9);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(610, 29);
            this.label1.TabIndex = 4;
            this.label1.Text = "Automated Laparoscopic Suturing Tool";
            // 
            // pitchNum
            // 
            this.pitchNum.Font = new System.Drawing.Font("Perpetua Titling MT", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.pitchNum.Location = new System.Drawing.Point(386, 170);
            this.pitchNum.Margin = new System.Windows.Forms.Padding(3, 3, 3, 0);
            this.pitchNum.Name = "pitchNum";
            this.pitchNum.Size = new System.Drawing.Size(66, 30);
            this.pitchNum.TabIndex = 5;
            // 
            // pitchLab
            // 
            this.pitchLab.AutoSize = true;
            this.pitchLab.Font = new System.Drawing.Font("Perpetua Titling MT", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.pitchLab.Location = new System.Drawing.Point(262, 171);
            this.pitchLab.Name = "pitchLab";
            this.pitchLab.Size = new System.Drawing.Size(83, 23);
            this.pitchLab.TabIndex = 8;
            this.pitchLab.Text = "Pitch :";
            this.pitchLab.Click += new System.EventHandler(this.pitchLab_Click);
            // 
            // pictureBox1
            // 
            this.pictureBox1.Image = ((System.Drawing.Image)(resources.GetObject("pictureBox1.Image")));
            this.pictureBox1.Location = new System.Drawing.Point(12, 47);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(131, 52);
            this.pictureBox1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.pictureBox1.TabIndex = 9;
            this.pictureBox1.TabStop = false;
            // 
            // pictureBox2
            // 
            this.pictureBox2.Image = ((System.Drawing.Image)(resources.GetObject("pictureBox2.Image")));
            this.pictureBox2.Location = new System.Drawing.Point(149, 47);
            this.pictureBox2.Name = "pictureBox2";
            this.pictureBox2.Size = new System.Drawing.Size(143, 52);
            this.pictureBox2.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.pictureBox2.TabIndex = 10;
            this.pictureBox2.TabStop = false;
            // 
            // bodRolllab
            // 
            this.bodRolllab.AutoSize = true;
            this.bodRolllab.Font = new System.Drawing.Font("Perpetua Titling MT", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.bodRolllab.Location = new System.Drawing.Point(203, 125);
            this.bodRolllab.Name = "bodRolllab";
            this.bodRolllab.Size = new System.Drawing.Size(142, 23);
            this.bodRolllab.TabIndex = 13;
            this.bodRolllab.Text = "Body Roll :";
            this.bodRolllab.Click += new System.EventHandler(this.bodRolllab_Click);
            // 
            // bodRollNum
            // 
            this.bodRollNum.Font = new System.Drawing.Font("Perpetua Titling MT", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.bodRollNum.Location = new System.Drawing.Point(386, 125);
            this.bodRollNum.Margin = new System.Windows.Forms.Padding(3, 3, 3, 0);
            this.bodRollNum.Maximum = new decimal(new int[] {
            1024,
            0,
            0,
            0});
            this.bodRollNum.Name = "bodRollNum";
            this.bodRollNum.Size = new System.Drawing.Size(66, 30);
            this.bodRollNum.TabIndex = 12;
            // 
            // eeLab
            // 
            this.eeLab.AutoSize = true;
            this.eeLab.Font = new System.Drawing.Font("Perpetua Titling MT", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.eeLab.Location = new System.Drawing.Point(163, 216);
            this.eeLab.Name = "eeLab";
            this.eeLab.Size = new System.Drawing.Size(182, 23);
            this.eeLab.TabIndex = 15;
            this.eeLab.Text = "Effector Roll :";
            this.eeLab.Click += new System.EventHandler(this.eeLab_Click);
            // 
            // eeNum
            // 
            this.eeNum.Font = new System.Drawing.Font("Perpetua Titling MT", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.eeNum.Location = new System.Drawing.Point(386, 215);
            this.eeNum.Margin = new System.Windows.Forms.Padding(3, 3, 3, 0);
            this.eeNum.Maximum = new decimal(new int[] {
            1024,
            0,
            0,
            0});
            this.eeNum.Name = "eeNum";
            this.eeNum.Size = new System.Drawing.Size(66, 30);
            this.eeNum.TabIndex = 14;
            // 
            // toggleGripLab
            // 
            this.toggleGripLab.AutoSize = true;
            this.toggleGripLab.Font = new System.Drawing.Font("Perpetua Titling MT", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.toggleGripLab.Location = new System.Drawing.Point(188, 305);
            this.toggleGripLab.Name = "toggleGripLab";
            this.toggleGripLab.Size = new System.Drawing.Size(157, 23);
            this.toggleGripLab.TabIndex = 16;
            this.toggleGripLab.Text = "Toggle Grip :";
            // 
            // ToggleNeedleLab
            // 
            this.ToggleNeedleLab.AutoSize = true;
            this.ToggleNeedleLab.Font = new System.Drawing.Font("Perpetua Titling MT", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.ToggleNeedleLab.Location = new System.Drawing.Point(248, 261);
            this.ToggleNeedleLab.Name = "ToggleNeedleLab";
            this.ToggleNeedleLab.Size = new System.Drawing.Size(97, 23);
            this.ToggleNeedleLab.TabIndex = 18;
            this.ToggleNeedleLab.Text = "Needle :";
            // 
            // debugShow
            // 
            this.debugShow.AutoSize = true;
            this.debugShow.Checked = true;
            this.debugShow.CheckState = System.Windows.Forms.CheckState.Checked;
            this.debugShow.Location = new System.Drawing.Point(12, 397);
            this.debugShow.Name = "debugShow";
            this.debugShow.Size = new System.Drawing.Size(15, 14);
            this.debugShow.TabIndex = 19;
            this.debugShow.UseVisualStyleBackColor = true;
            this.debugShow.CheckedChanged += new System.EventHandler(this.debugShow_CheckedChanged_2);
            // 
            // serialPort1
            // 
            this.serialPort1.ErrorReceived += new System.IO.Ports.SerialErrorReceivedEventHandler(this.serialPort1_ErrorReceived);
            this.serialPort1.DataReceived += new System.IO.Ports.SerialDataReceivedEventHandler(this.serialPort1_DataReceived);
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.b_CCW);
            this.panel1.Controls.Add(this.b_CW);
            this.panel1.Location = new System.Drawing.Point(456, 121);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(59, 36);
            this.panel1.TabIndex = 32;
            // 
            // b_CCW
            // 
            this.b_CCW.AutoSize = true;
            this.b_CCW.Location = new System.Drawing.Point(3, 17);
            this.b_CCW.Name = "b_CCW";
            this.b_CCW.Size = new System.Drawing.Size(50, 17);
            this.b_CCW.TabIndex = 29;
            this.b_CCW.Text = "CCW";
            this.b_CCW.UseVisualStyleBackColor = true;
            // 
            // b_CW
            // 
            this.b_CW.AutoSize = true;
            this.b_CW.Checked = true;
            this.b_CW.Location = new System.Drawing.Point(3, 2);
            this.b_CW.Name = "b_CW";
            this.b_CW.Size = new System.Drawing.Size(43, 17);
            this.b_CW.TabIndex = 28;
            this.b_CW.TabStop = true;
            this.b_CW.Text = "CW";
            this.b_CW.UseVisualStyleBackColor = true;
            // 
            // panel3
            // 
            this.panel3.Controls.Add(this.e_CCW);
            this.panel3.Controls.Add(this.e_CW);
            this.panel3.Location = new System.Drawing.Point(453, 212);
            this.panel3.Name = "panel3";
            this.panel3.Size = new System.Drawing.Size(63, 36);
            this.panel3.TabIndex = 34;
            // 
            // e_CCW
            // 
            this.e_CCW.AutoSize = true;
            this.e_CCW.Location = new System.Drawing.Point(6, 17);
            this.e_CCW.Name = "e_CCW";
            this.e_CCW.Size = new System.Drawing.Size(50, 17);
            this.e_CCW.TabIndex = 33;
            this.e_CCW.Text = "CCW";
            this.e_CCW.UseVisualStyleBackColor = true;
            // 
            // e_CW
            // 
            this.e_CW.AutoSize = true;
            this.e_CW.Checked = true;
            this.e_CW.Location = new System.Drawing.Point(6, 2);
            this.e_CW.Name = "e_CW";
            this.e_CW.Size = new System.Drawing.Size(43, 17);
            this.e_CW.TabIndex = 32;
            this.e_CW.TabStop = true;
            this.e_CW.Text = "CW";
            this.e_CW.UseVisualStyleBackColor = true;
            // 
            // resetBtn
            // 
            this.resetBtn.Font = new System.Drawing.Font("Perpetua Titling MT", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.resetBtn.Location = new System.Drawing.Point(96, 395);
            this.resetBtn.Margin = new System.Windows.Forms.Padding(1);
            this.resetBtn.Name = "resetBtn";
            this.resetBtn.Size = new System.Drawing.Size(48, 20);
            this.resetBtn.TabIndex = 35;
            this.resetBtn.Text = "Reset";
            this.resetBtn.UseVisualStyleBackColor = true;
            this.resetBtn.Click += new System.EventHandler(this.resetBtn_Click);
            // 
            // comCombo
            // 
            this.comCombo.FormattingEnabled = true;
            this.comCombo.Items.AddRange(new object[] {
            "COM1",
            "COM2",
            "COM3",
            "COM4",
            "COM5",
            "COM6",
            "COM7",
            "COM8",
            "COM9",
            "COM10"});
            this.comCombo.Location = new System.Drawing.Point(33, 394);
            this.comCombo.Name = "comCombo";
            this.comCombo.Size = new System.Drawing.Size(59, 21);
            this.comCombo.TabIndex = 36;
            this.comCombo.SelectedValueChanged += new System.EventHandler(this.comCombo_SelectedValueChanged);
            // 
            // bodGo
            // 
            this.bodGo.BackColor = System.Drawing.SystemColors.Control;
            this.bodGo.Enabled = false;
            this.bodGo.ForeColor = System.Drawing.SystemColors.Control;
            this.bodGo.Image = ((System.Drawing.Image)(resources.GetObject("bodGo.Image")));
            this.bodGo.Location = new System.Drawing.Point(349, 128);
            this.bodGo.Name = "bodGo";
            this.bodGo.Size = new System.Drawing.Size(24, 24);
            this.bodGo.TabIndex = 39;
            this.bodGo.UseVisualStyleBackColor = false;
            this.bodGo.Click += new System.EventHandler(this.bodGo_Click);
            // 
            // pitchGo
            // 
            this.pitchGo.BackColor = System.Drawing.SystemColors.Control;
            this.pitchGo.Enabled = false;
            this.pitchGo.ForeColor = System.Drawing.SystemColors.Control;
            this.pitchGo.Image = ((System.Drawing.Image)(resources.GetObject("pitchGo.Image")));
            this.pitchGo.Location = new System.Drawing.Point(349, 173);
            this.pitchGo.Name = "pitchGo";
            this.pitchGo.Size = new System.Drawing.Size(24, 24);
            this.pitchGo.TabIndex = 40;
            this.pitchGo.UseVisualStyleBackColor = false;
            this.pitchGo.Click += new System.EventHandler(this.pitchGo_Click);
            // 
            // eeGo
            // 
            this.eeGo.BackColor = System.Drawing.SystemColors.Control;
            this.eeGo.Enabled = false;
            this.eeGo.ForeColor = System.Drawing.SystemColors.Control;
            this.eeGo.Image = ((System.Drawing.Image)(resources.GetObject("eeGo.Image")));
            this.eeGo.Location = new System.Drawing.Point(349, 218);
            this.eeGo.Name = "eeGo";
            this.eeGo.Size = new System.Drawing.Size(24, 24);
            this.eeGo.TabIndex = 41;
            this.eeGo.UseVisualStyleBackColor = false;
            this.eeGo.Click += new System.EventHandler(this.eeGo_Click);
            // 
            // toggleGo
            // 
            this.toggleGo.BackColor = System.Drawing.SystemColors.Control;
            this.toggleGo.Enabled = false;
            this.toggleGo.ForeColor = System.Drawing.SystemColors.Control;
            this.toggleGo.Image = ((System.Drawing.Image)(resources.GetObject("toggleGo.Image")));
            this.toggleGo.Location = new System.Drawing.Point(349, 263);
            this.toggleGo.Name = "toggleGo";
            this.toggleGo.Size = new System.Drawing.Size(24, 24);
            this.toggleGo.TabIndex = 42;
            this.toggleGo.UseVisualStyleBackColor = false;
            this.toggleGo.Click += new System.EventHandler(this.toggleGo_Click);
            // 
            // gripGo
            // 
            this.gripGo.BackColor = System.Drawing.SystemColors.Control;
            this.gripGo.Enabled = false;
            this.gripGo.ForeColor = System.Drawing.SystemColors.Control;
            this.gripGo.Image = ((System.Drawing.Image)(resources.GetObject("gripGo.Image")));
            this.gripGo.Location = new System.Drawing.Point(349, 307);
            this.gripGo.Name = "gripGo";
            this.gripGo.Size = new System.Drawing.Size(24, 24);
            this.gripGo.TabIndex = 43;
            this.gripGo.UseVisualStyleBackColor = false;
            this.gripGo.Click += new System.EventHandler(this.gripGo_Click);
            // 
            // openGrip
            // 
            this.openGrip.AutoSize = true;
            this.openGrip.Checked = true;
            this.openGrip.Font = new System.Drawing.Font("Perpetua Titling MT", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.openGrip.Location = new System.Drawing.Point(386, 305);
            this.openGrip.Name = "openGrip";
            this.openGrip.Size = new System.Drawing.Size(61, 19);
            this.openGrip.TabIndex = 44;
            this.openGrip.TabStop = true;
            this.openGrip.Text = "Open";
            this.openGrip.UseVisualStyleBackColor = true;
            // 
            // closeGrip
            // 
            this.closeGrip.AutoSize = true;
            this.closeGrip.Font = new System.Drawing.Font("Perpetua Titling MT", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.closeGrip.Location = new System.Drawing.Point(386, 322);
            this.closeGrip.Name = "closeGrip";
            this.closeGrip.Size = new System.Drawing.Size(65, 19);
            this.closeGrip.TabIndex = 45;
            this.closeGrip.TabStop = true;
            this.closeGrip.Text = "Close";
            this.closeGrip.UseVisualStyleBackColor = true;
            // 
            // halfGrip
            // 
            this.halfGrip.AutoSize = true;
            this.halfGrip.Font = new System.Drawing.Font("Perpetua Titling MT", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.halfGrip.Location = new System.Drawing.Point(386, 339);
            this.halfGrip.Name = "halfGrip";
            this.halfGrip.Size = new System.Drawing.Size(58, 19);
            this.halfGrip.TabIndex = 46;
            this.halfGrip.TabStop = true;
            this.halfGrip.Text = "Half";
            this.halfGrip.UseVisualStyleBackColor = true;
            // 
            // panel2
            // 
            this.panel2.Controls.Add(this.needleDropRadio);
            this.panel2.Controls.Add(this.needleToggleRadio);
            this.panel2.Location = new System.Drawing.Point(380, 257);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(63, 36);
            this.panel2.TabIndex = 47;
            // 
            // needleDropRadio
            // 
            this.needleDropRadio.AutoSize = true;
            this.needleDropRadio.Location = new System.Drawing.Point(6, 17);
            this.needleDropRadio.Name = "needleDropRadio";
            this.needleDropRadio.Size = new System.Drawing.Size(48, 17);
            this.needleDropRadio.TabIndex = 33;
            this.needleDropRadio.Text = "Drop";
            this.needleDropRadio.UseVisualStyleBackColor = true;
            // 
            // needleToggleRadio
            // 
            this.needleToggleRadio.AutoSize = true;
            this.needleToggleRadio.Checked = true;
            this.needleToggleRadio.Location = new System.Drawing.Point(6, 2);
            this.needleToggleRadio.Name = "needleToggleRadio";
            this.needleToggleRadio.Size = new System.Drawing.Size(58, 17);
            this.needleToggleRadio.TabIndex = 32;
            this.needleToggleRadio.TabStop = true;
            this.needleToggleRadio.Text = "Toggle";
            this.needleToggleRadio.UseVisualStyleBackColor = true;
            // 
            // RoboticSuturing
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.White;
            this.ClientSize = new System.Drawing.Size(628, 560);
            this.Controls.Add(this.panel2);
            this.Controls.Add(this.halfGrip);
            this.Controls.Add(this.closeGrip);
            this.Controls.Add(this.openGrip);
            this.Controls.Add(this.gripGo);
            this.Controls.Add(this.toggleGo);
            this.Controls.Add(this.eeGo);
            this.Controls.Add(this.pitchGo);
            this.Controls.Add(this.bodGo);
            this.Controls.Add(this.comCombo);
            this.Controls.Add(this.resetBtn);
            this.Controls.Add(this.panel3);
            this.Controls.Add(this.debugShow);
            this.Controls.Add(this.ToggleNeedleLab);
            this.Controls.Add(this.toggleGripLab);
            this.Controls.Add(this.eeLab);
            this.Controls.Add(this.eeNum);
            this.Controls.Add(this.bodRolllab);
            this.Controls.Add(this.bodRollNum);
            this.Controls.Add(this.pictureBox2);
            this.Controls.Add(this.pictureBox1);
            this.Controls.Add(this.pitchLab);
            this.Controls.Add(this.pitchNum);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.textBox1);
            this.Controls.Add(this.stopBtn);
            this.Controls.Add(this.startBtn);
            this.Controls.Add(this.panel1);
            this.MaximizeBox = false;
            this.MaximumSize = new System.Drawing.Size(804, 800);
            this.Name = "RoboticSuturing";
            this.Text = "Automated Laparoscopic Suturing Tool";
            this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.RoboticSuturing_FormClosing);
            ((System.ComponentModel.ISupportInitialize)(this.pitchNum)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bodRollNum)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.eeNum)).EndInit();
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            this.panel3.ResumeLayout(false);
            this.panel3.PerformLayout();
            this.panel2.ResumeLayout(false);
            this.panel2.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button startBtn;
        private System.Windows.Forms.Button stopBtn;
        private System.Windows.Forms.TextBox textBox1;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.NumericUpDown pitchNum;
        private System.Windows.Forms.Label pitchLab;
        private System.Windows.Forms.PictureBox pictureBox1;
        private System.Windows.Forms.PictureBox pictureBox2;
        private System.Windows.Forms.Label bodRolllab;
        private System.Windows.Forms.NumericUpDown bodRollNum;
        private System.Windows.Forms.Label eeLab;
        private System.Windows.Forms.NumericUpDown eeNum;
        private System.Windows.Forms.Label toggleGripLab;
        private System.Windows.Forms.Label ToggleNeedleLab;
        private System.Windows.Forms.CheckBox debugShow;
        private System.IO.Ports.SerialPort serialPort1;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.RadioButton b_CCW;
        private System.Windows.Forms.RadioButton b_CW;
        private System.Windows.Forms.Panel panel3;
        private System.Windows.Forms.RadioButton e_CCW;
        private System.Windows.Forms.RadioButton e_CW;
        private System.Windows.Forms.Button resetBtn;
        private System.Windows.Forms.ComboBox comCombo;
        private System.Windows.Forms.Button bodGo;
        private System.Windows.Forms.Button pitchGo;
        private System.Windows.Forms.Button eeGo;
        private System.Windows.Forms.Button toggleGo;
        private System.Windows.Forms.Button gripGo;
        private System.Windows.Forms.RadioButton openGrip;
        private System.Windows.Forms.RadioButton closeGrip;
        private System.Windows.Forms.RadioButton halfGrip;
        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.RadioButton needleDropRadio;
        private System.Windows.Forms.RadioButton needleToggleRadio;
    }
}

