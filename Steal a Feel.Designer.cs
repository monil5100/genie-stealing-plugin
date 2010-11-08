namespace StealingPlugin
{
    partial class Steal_a_Feel
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
            this.btnImportUpdate = new System.Windows.Forms.Button();
            this.tbProvinceCode = new System.Windows.Forms.TextBox();
            this.tbContainer = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.tabControl1 = new System.Windows.Forms.TabControl();
            this.tabPage1 = new System.Windows.Forms.TabPage();
            this.cbPerceiveHealth = new System.Windows.Forms.CheckBox();
            this.cbPerceive = new System.Windows.Forms.CheckBox();
            this.label4 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.cbMark = new System.Windows.Forms.CheckBox();
            this.label2 = new System.Windows.Forms.Label();
            this.button1 = new System.Windows.Forms.Button();
            this.tabPage2 = new System.Windows.Forms.TabPage();
            this.comboBox1 = new System.Windows.Forms.ComboBox();
            this.stealingDBDataSet = new StealingPlugin.StealingDBDataSet();
            this.stealingDBDataSetBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.tabControl1.SuspendLayout();
            this.tabPage1.SuspendLayout();
            this.tabPage2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.stealingDBDataSet)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.stealingDBDataSetBindingSource)).BeginInit();
            this.SuspendLayout();
            // 
            // btnImportUpdate
            // 
            this.btnImportUpdate.Location = new System.Drawing.Point(162, 4);
            this.btnImportUpdate.Name = "btnImportUpdate";
            this.btnImportUpdate.Size = new System.Drawing.Size(105, 23);
            this.btnImportUpdate.TabIndex = 1;
            this.btnImportUpdate.Text = "Import/Update";
            this.btnImportUpdate.UseVisualStyleBackColor = true;
            this.btnImportUpdate.Click += new System.EventHandler(this.btnImportUpdate_Click);
            // 
            // tbProvinceCode
            // 
            this.tbProvinceCode.Location = new System.Drawing.Point(8, 6);
            this.tbProvinceCode.Name = "tbProvinceCode";
            this.tbProvinceCode.Size = new System.Drawing.Size(124, 20);
            this.tbProvinceCode.TabIndex = 2;
            this.tbProvinceCode.Text = "ProvinceCode";
            // 
            // tbContainer
            // 
            this.tbContainer.Location = new System.Drawing.Point(105, 10);
            this.tbContainer.Name = "tbContainer";
            this.tbContainer.Size = new System.Drawing.Size(100, 20);
            this.tbContainer.TabIndex = 3;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(6, 13);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(93, 13);
            this.label1.TabIndex = 4;
            this.label1.Text = "Stealing Container";
            // 
            // tabControl1
            // 
            this.tabControl1.Controls.Add(this.tabPage1);
            this.tabControl1.Controls.Add(this.tabPage2);
            this.tabControl1.Location = new System.Drawing.Point(0, 1);
            this.tabControl1.Name = "tabControl1";
            this.tabControl1.SelectedIndex = 0;
            this.tabControl1.Size = new System.Drawing.Size(419, 329);
            this.tabControl1.TabIndex = 5;
            // 
            // tabPage1
            // 
            this.tabPage1.Controls.Add(this.comboBox1);
            this.tabPage1.Controls.Add(this.cbPerceiveHealth);
            this.tabPage1.Controls.Add(this.cbPerceive);
            this.tabPage1.Controls.Add(this.label4);
            this.tabPage1.Controls.Add(this.label3);
            this.tabPage1.Controls.Add(this.cbMark);
            this.tabPage1.Controls.Add(this.label2);
            this.tabPage1.Controls.Add(this.button1);
            this.tabPage1.Controls.Add(this.label1);
            this.tabPage1.Controls.Add(this.tbContainer);
            this.tabPage1.Location = new System.Drawing.Point(4, 22);
            this.tabPage1.Name = "tabPage1";
            this.tabPage1.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage1.Size = new System.Drawing.Size(411, 303);
            this.tabPage1.TabIndex = 0;
            this.tabPage1.Text = "Stealing Config";
            this.tabPage1.UseVisualStyleBackColor = true;
            // 
            // cbPerceiveHealth
            // 
            this.cbPerceiveHealth.AutoSize = true;
            this.cbPerceiveHealth.Location = new System.Drawing.Point(105, 92);
            this.cbPerceiveHealth.Name = "cbPerceiveHealth";
            this.cbPerceiveHealth.Size = new System.Drawing.Size(15, 14);
            this.cbPerceiveHealth.TabIndex = 11;
            this.cbPerceiveHealth.UseVisualStyleBackColor = true;
            // 
            // cbPerceive
            // 
            this.cbPerceive.AutoSize = true;
            this.cbPerceive.Location = new System.Drawing.Point(105, 68);
            this.cbPerceive.Name = "cbPerceive";
            this.cbPerceive.Size = new System.Drawing.Size(15, 14);
            this.cbPerceive.TabIndex = 10;
            this.cbPerceive.UseVisualStyleBackColor = true;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(9, 97);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(89, 13);
            this.label4.TabIndex = 9;
            this.label4.Text = "Perceive Health: ";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(9, 73);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(55, 13);
            this.label3.TabIndex = 8;
            this.label3.Text = "Perceive: ";
            // 
            // cbMark
            // 
            this.cbMark.AutoSize = true;
            this.cbMark.Location = new System.Drawing.Point(105, 47);
            this.cbMark.Name = "cbMark";
            this.cbMark.Size = new System.Drawing.Size(15, 14);
            this.cbMark.TabIndex = 7;
            this.cbMark.UseVisualStyleBackColor = true;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(9, 48);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(37, 13);
            this.label2.TabIndex = 6;
            this.label2.Text = "Mark?";
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(302, 267);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(99, 23);
            this.button1.TabIndex = 5;
            this.button1.Text = "Update Config";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // tabPage2
            // 
            this.tabPage2.Controls.Add(this.tbProvinceCode);
            this.tabPage2.Controls.Add(this.btnImportUpdate);
            this.tabPage2.Location = new System.Drawing.Point(4, 22);
            this.tabPage2.Name = "tabPage2";
            this.tabPage2.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage2.Size = new System.Drawing.Size(411, 303);
            this.tabPage2.TabIndex = 1;
            this.tabPage2.Text = "Import/Export";
            this.tabPage2.UseVisualStyleBackColor = true;
            // 
            // comboBox1
            // 
            this.comboBox1.DataSource = this.stealingDBDataSetBindingSource;
            this.comboBox1.FormattingEnabled = true;
            this.comboBox1.Location = new System.Drawing.Point(9, 171);
            this.comboBox1.Name = "comboBox1";
            this.comboBox1.Size = new System.Drawing.Size(121, 21);
            this.comboBox1.TabIndex = 12;
            // 
            // Steal_a_Feel
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(417, 325);
            this.Controls.Add(this.tabControl1);
            this.Name = "Steal_a_Feel";
            this.Text = "Steal_a_Feel";
            this.tabControl1.ResumeLayout(false);
            this.tabPage1.ResumeLayout(false);
            this.tabPage1.PerformLayout();
            this.tabPage2.ResumeLayout(false);
            this.tabPage2.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.stealingDBDataSet)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.stealingDBDataSetBindingSource)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Button btnImportUpdate;
        private System.Windows.Forms.TextBox tbProvinceCode;
        public System.Windows.Forms.TextBox tbContainer;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TabControl tabControl1;
        private System.Windows.Forms.TabPage tabPage1;
        private System.Windows.Forms.TabPage tabPage2;
        private System.Windows.Forms.Button button1;
        public System.Windows.Forms.CheckBox cbMark;
        private System.Windows.Forms.Label label2;
        public System.Windows.Forms.CheckBox cbPerceiveHealth;
        public System.Windows.Forms.CheckBox cbPerceive;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.ComboBox comboBox1;
        private System.Windows.Forms.BindingSource stealingDBDataSetBindingSource;
        private StealingDBDataSet stealingDBDataSet;
    }
}