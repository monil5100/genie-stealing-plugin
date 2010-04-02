using System;
using System.Windows.Forms;
using System.IO;
using System.Collections.Generic;
using System.Collections;
using System.Text.RegularExpressions;
using System.Text;
using GeniePlugin.Interfaces;
using System.Runtime.Serialization.Formatters.Binary;
using System.Data.SQLite;
using System.Data;
using GeniePlugin;

namespace StealingPlugin
{
    public class Plugin : GeniePlugin.Interfaces.IPlugin
    {
        #region IPlugin Members
        public IHost _host;                             //Required for plugin
        public System.Windows.Forms.Form _parent;       //Required for plugin
        public string sSDBLocation { get; set; }
        
        public enum VarList
        {
            StealingContainer,
            StealingMark,
            StealingPerceiveHealth,
            StealingPerceive,
            ROSSMAN_SLING,
            ROSSMAN_HERB,
            ROSSMAN_GENERAL,
            ROSSMAN_FORGE,
            ROSSMAN_CLOTHING,
            HAVEN_HERB,
            HAVEN_IRONWORKS,
            HAVEN_NAPHTHA,
            HAVEN_FLOWER,
            HAVEN_ARMORY,
            HAVEN_ARMS,
            HAVEN_GENERAL,
            HAVEN_CLOTH,
            HAVEN_ARTIFICER,
            HAVEN_JOY,
            HAVEN_SMOKE,
            HAVEN_WEAPON,
            HAVEN_BARD,
            HAVEN_CLERIC,
            ARTHE_PATTERN,
            ARTHE_FASHION,
            ARTHE_ODDS,
            ARTHE_BALLAD,
            XING_SCRIPT,
            XING_CARD,
            XING_GENERAL,
            XING_WEAPON,
            XING_ARMOR,
            XING_MUSIC,
            XING_EMPATH,
            XING_EMPATH2,
            XING_EMPATH3,
            XING_CLERIC,
            XING_BATH,
            XING_HABER,
            XING_ARTIF,
            XING_TANNER,
            XING_JEWELRY,
            XING_CLOTH,
            XING_SHOE,
            XING_HERB,
            XING_ALCHEMY,
            XING_FLOWER,
            LETH_SKIN,
            LETH_BOW,
            LETH_ORIGAMI,
            LETH_WEAPON,
            LETH_WICKER,
            LETH_BARD,
            LETH_CLOTHES,
            LETH_WOOD,
            LETH_GENERAL,
            LETH_PERFUME
        };

        private void ResetVars()
        {
            foreach (VarList item in Enum.GetValues(typeof(VarList)))
            {
                _host.set_Variable(item.ToString().Replace("_", "."), "");
            }
        }

        void IPlugin.Initialize(IHost Host)
        {
            this.sSDBLocation = "NOT FOUND";
            _host = Host;
            if (File.Exists(this._host.get_Variable("PluginPath") + "StealingDB.sdb"))
            {
                this.sSDBLocation = this._host.get_Variable("PluginPath") + "StealingDB.sdb";                
            }
            if (File.Exists(Application.StartupPath + @"\Plugins\StealingDB.sdb"))
            {
                this.sSDBLocation = Application.StartupPath + @"\Plugins\StealingDB.sdb";
            }
        }

        string IPlugin.Name
        {
            get { return "Stealin with a Feelin"; }
            //get { throw new NotImplementedException(); }
        }

        void IPlugin.ParentClosing()
        {
            //throw new NotImplementedException();
        }

        string IPlugin.ParseText(string text)
        {
            //throw new NotImplementedException();
            return text;
        }

        string IPlugin.ParseInput(string Text)
        {
            try
            {
                if (Text == "/TestLocation")
                {
                    this._host.EchoText("SDB Location is: " + sSDBLocation);
                }

                //throw new NotImplementedException();
                if (Text == "/LoadStealing")
                {
                    if(this.sSDBLocation == "NOT FOUND")
                        throw new Exception("ERROR: The Stealing.SDB is not in the proper Location." + Environment.NewLine + "The valid Locations are: " + this._host.get_Variable("PluginPath") + "StealingDB.sdb" + " or " + Application.StartupPath + @"\Plugins\StealingDB.sdb");

                    ResetVars();
                    string sStealSkill = this._host.get_Variable("Stealing.Ranks");
                    int iStealSkill = int.Parse(sStealSkill.Substring(0, sStealSkill.IndexOf(".")));
                    SQLiteConnection con = new SQLiteConnection("Data Source= " + this.sSDBLocation);
                    SQLiteCommand cmd = new SQLiteCommand(con);
                    cmd.CommandText = string.Format("Select * from ItemList where MinRank < {0} and {0} < Trivial order by Province, City, StoreName, MinRank", iStealSkill.ToString());
                    con.Open();



                    // Variable for the Stealing Item
                    string sVar = string.Empty;
                    string sVarValue = string.Empty;

                    SQLiteDataAdapter sda = new SQLiteDataAdapter(cmd);
                    DataSet ods = new DataSet();
                    sda.Fill(ods);

                    if (ods.Tables[0].Rows.Count > 0)
                    {

                        foreach (DataRow dr in ods.Tables[0].Rows)
                        {
                            sVar = dr["City"].ToString() + "." + dr["StoreName"].ToString();
                            sVarValue = dr["ItemName1"].ToString();
                            this._host.set_Variable(sVar, sVarValue);
                            this._host.EchoText(string.Format("Variable: {0} Set to: {1}", sVar, sVarValue));
                        }
                    }
                    else
                        this._host.EchoText("No Valid Stealing Items.  Either Edit the SDB or Stop stealing so much.");

                    con.Close();
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Rico can't program for shit, Error: " + Environment.NewLine + ex.Message);
            }

            return Text;

        }

        void IPlugin.ParseXML(string XML)
        {
            //throw new NotImplementedException();
        }

        void IPlugin.Show()
        {
            //throw new NotImplementedException();
            Steal_a_Feel sf = new Steal_a_Feel(ref this._host);
            sf.tbContainer.Text = this._host.get_Variable("StealingContainer");
            sf.cbMark.Checked = this._host.get_Variable("StealingMark") == String.Empty || this._host.get_Variable("StealingMark") == "No" ? false : true;
            sf.cbPerceiveHealth.Checked = this._host.get_Variable("StealingPerceiveHealth") == String.Empty || this._host.get_Variable("StealingPerceiveHealth") == "No" ? false : true;
            sf.cbPerceive.Checked = this._host.get_Variable("StealingPerceive") == String.Empty || this._host.get_Variable("StealingPerceive") == "No" ? false : true;

            if (_parent != null)
                sf.MdiParent = _parent;


            sf.Show();
        }

        void IPlugin.VariableChanged(string Variable)
        {
            //throw new NotImplementedException();
        }

        string IPlugin.Version
        {
            get { return "First Version";}
        }


        public bool Enabled
        {
            get;
            set;
        }

        #endregion
    }
}
