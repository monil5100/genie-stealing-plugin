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
            this.btnImportUpdate = new System.Windows.Forms.Button();
            this.tbProvinceCode = new System.Windows.Forms.TextBox();
            this.SuspendLayout();
            // 
            // btnImportUpdate
            // 
            this.btnImportUpdate.Location = new System.Drawing.Point(167, 13);
            this.btnImportUpdate.Name = "btnImportUpdate";
            this.btnImportUpdate.Size = new System.Drawing.Size(105, 23);
            this.btnImportUpdate.TabIndex = 1;
            this.btnImportUpdate.Text = "Import/Update";
            this.btnImportUpdate.UseVisualStyleBackColor = true;
            this.btnImportUpdate.Click += new System.EventHandler(this.btnImportUpdate_Click);
            // 
            // tbProvinceCode
            // 
            this.tbProvinceCode.Location = new System.Drawing.Point(13, 15);
            this.tbProvinceCode.Name = "tbProvinceCode";
            this.tbProvinceCode.Size = new System.Drawing.Size(124, 20);
            this.tbProvinceCode.TabIndex = 2;
            this.tbProvinceCode.Text = "ProvinceCode";
            // 
            // Steal_a_Feel
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(284, 264);
            this.Controls.Add(this.tbProvinceCode);
            this.Controls.Add(this.btnImportUpdate);
            this.Name = "Steal_a_Feel";
            this.Text = "Steal_a_Feel";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button btnImportUpdate;
        private System.Windows.Forms.TextBox tbProvinceCode;
    }
}