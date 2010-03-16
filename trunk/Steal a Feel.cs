using System;
using System.IO;
using System.Text.RegularExpressions;
using System.Data.SQLite;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace StealingPlugin
{
    public partial class Steal_a_Feel : Form
    {
        public Steal_a_Feel()
        {
            InitializeComponent();
        }

        private void btnImportUpdate_Click(object sender, EventArgs e)
        {
            if (this.tbProvinceCode.Text == string.Empty || this.tbProvinceCode.Text == "ProvinceCode")
            {
                MessageBox.Show("Please enter a Proper Province Code for the Province you are updating/Importing", "Province Code Error!");
                return;
            }

            string sProv = this.tbProvinceCode.Text;
            string sCity = string.Empty;
            string sShop = string.Empty;
            string sItem = string.Empty;
            string sMin = string.Empty;
            string sMax = string.Empty;

            TextReader tr = new StreamReader(Application.StartupPath + @"\Plugins\DataSet.txt");

            while (true)
            {
                string s = tr.ReadLine();
                if (s == null) break;
                if (s == "|-")
                {
                    // We have the Start of a new Item
                    // 1st line is City
                    s = tr.ReadLine();
                    // Strip first 3 characters
                    switch (s.Substring(2))
                    {
                        case "Crossing":
                            sCity = "XING";
                            break;
                        case "Arthe Dale":
                            sCity = "ARTHE";
                            break;
                        case "Tiger Clan":
                            sCity = "TIGER";
                            break;
                        case "Dirge":
                            sCity = "DIRGE";
                            break;
                        case "Kaerna Village":
                            sCity = "KAERNA";
                            break;
                        case "Knife Clan":
                            sCity = "KNIFE";
                            break;
                        case "Leth Deriel":
                            sCity = "LETH";
                            break;
                        case "Wolf Clan":
                            sCity = "WOLF";
                            break;
                    }


                    // 2nd Line is the Shop
                    s = tr.ReadLine();
                    
                    // Decide what Shop this is:
                    if (s.Contains("Bard D'Or Fine Instruments"))
                    {
                        // Bard Shop, ShortName is
                        sShop = "MUSIC";
                    }
                    else if (s.Contains("Berolt's Dry Goods"))
                    {
                        sShop = "GENERAL";
                    }
                    else if (s.Contains("Brisson's Haberdashery"))
                    {
                        sShop = "HABER";
                    }
                    else if (s.Contains("Brother Durantine's Cleric Shop"))
                    {
                        sShop = "CLERIC";
                    }
                    else if (s.Contains("Card Collector"))
                    {
                        sShop = "CARD";
                    }
                    else if (s.Contains("Chizili's Alchemical Goods"))
                    {
                        sShop = "ALCHEMY";
                    }
                    else if (s.Contains("Falken's Tannery"))
                    {
                        sShop = "TANNER";
                    }
                    else if (s.Contains("Fenwyrthie's Curio Shop"))
                    {
                        sShop = "CURIO";
                    }
                    else if (s.Contains("Grisgonda's Gems and Jewels"))
                    {
                        sShop = "JEWELRY";
                    }
                    else if (s.Contains("Herilo's Artifacts"))
                    {
                        sShop = "ARTIF";
                    }
                    else if (s.Contains("Marcipur's Stitchery"))
                    {
                        sShop = "CLOTH";
                    }
                    else if (s.Contains("Mauriga's Botanicals"))
                    {
                        sShop = "HERB";
                    }
                    else if (s.Contains("Milgrym's Weapons"))
                    {
                        sShop = "WEAPON";
                    }
                    else if (s.Contains("Orem's Bathhouse"))
                    {
                        sShop = "BATH";
                    }
                    else if (s.Contains("Orielda's Blossoms"))
                    {
                        sShop = "FLOWER";
                    }
                    else if (s.Contains("Ragge's Locksmithing"))
                    {
                        sShop = "LOCKS";
                    }
                    else if (s.Contains("Talmai's Cobblery"))
                    {
                        sShop = "SHOE";
                    }
                    else if (s.Contains("Tembeg's Armory"))
                    {
                        sShop = "ARMOR";
                    }
                    else if (s.Contains("Ahnglor's General Store"))
                    {
                        sShop = "GENERAL";
                    }
                    else if (s.Contains("Iron Mountain Weapons"))
                    {
                        sShop = "WEAPON";
                    }
                    else if (s.Contains("Grek's Food and Supplies"))
                    {
                        sShop = "GENERAL";
                    }
                    else if (s.Contains("Bukor's Leatherworks"))
                    {
                        sShop = "LEATHER";
                    }
                    else if (s.Contains("Tobb's Smithy"))
                    {
                        sShop = "WEAPON";
                    }
                    else if (s.Contains("Alberdeen's Meats and Provisions"))
                    {
                        sShop = "GENERAL";
                    }
                    else if (s.Contains("Blanca's Basketry and Wickerworks"))
                    {
                        sShop = "WICKER";
                    }
                    else if (s.Contains("Huyelm's Trueflight Bow and Arrow Shop"))
                    {
                        sShop = "BOWYER";
                    }
                    else if (s.Contains("Madame Orris' Perfumerie"))
                    {
                        sShop = "PERFUME";
                    }
                    else if (s.Contains("Morikai's"))
                    {
                        sShop = "PELT";
                    }
                    else if (s.Contains("Ongadine's Garb and Gear"))
                    {
                        sShop = "GARB";
                    }
                    else if (s.Contains("Havor's Forge"))
                    {
                        sShop = "FORGE";
                    }
                    else if (s.Contains("Midwife Neesa's Cottage"))
                    {
                        sShop = "COTTAGE";
                    }
                    else if (s.Contains("Brigetta's Tanned Goods"))
                    {
                        sShop = "TANNER";
                    }
                    else if (s.Contains("Barley Bulrush's Bardic Ballads"))
                    {
                        sShop = "BALLAD";
                    }
                    else if (s.Contains("Bobba's Arms and Armor"))
                    {
                        sShop = "ARMOR";
                    }
                    else if (s.Contains("Feta's Kitchen"))
                    {
                        sShop = "KITCHEN";
                    }
                    else if (s.Contains("Odds 'n Ends"))
                    {
                        sShop = "ODDS";
                    }
                    else if (s.Contains("Phoebe's Fashions"))
                    {
                        sShop = "FASHION";
                    }
                    else if (s.Contains("Quellia's Thread Shop"))
                    {
                        sShop = "PATTERN";
                    }
                    else if (s.Contains("Thipbeet's Tart Boutique"))
                    {
                        sShop = "TART";
                    }
                    else if (s.Contains("Yulugri Wala"))
                    {
                        sShop = "TOBACCO";
                    }

                    // 3rd Line is the Item
                    sItem = tr.ReadLine().Substring(2).Replace("'", "''");

                    // 4th Line is Apprasial - IGNORED
                    s = tr.ReadLine();

                    // 5th line is Weight - IGNORED
                    s = tr.ReadLine();

                    //6th and 7th are Trivials
                    string sPredTriv = tr.ReadLine().Substring(2);
                    string sActialTriv = tr.ReadLine().Substring(2);
                    int i;
                    Regex regEx = new Regex(@"\D");

                    if (!int.TryParse(sActialTriv, out i))
                    {
                        // Have to do this since some idiots dont understand what ACTUAL is on ElanthiPedia.
                        // regex to pull the Number
                        sActialTriv = regEx.Replace(sPredTriv, "");

                        //Regex r = new Regex(@"^(.*\d*)\s(.*)$");
                        //Match m = r.Match(sActialTriv);
                        //foreach (Group g in m.Groups)
                        //{
                        //    if (int.TryParse(g.Value, out i))
                        //    {
                        //        sActialTriv = g.Value;
                        //        break;
                        //    }
                        //}
                    }
                    if (!int.TryParse(sActialTriv, out i))
                    {
                        // If its STILL not a number, using Predicted
                        sActialTriv = sPredTriv;
                    }

                    // Since EPedia doesn't have mins, I am assuming the Min is 1/2 of the Trivial Value
                    if (sActialTriv == "")
                    {
                        sActialTriv = "0";
                        sMin = "0";
                    }
                    else
                        sMin = Convert.ToString((int.Parse(sActialTriv) / 2));

                    // Ok, we have all the Values, time to add it into the SQLite table


                    // ONLY Insert if we have all Values
                    if (sMin != string.Empty && sActialTriv != string.Empty && sShop != string.Empty && sCity != string.Empty && sItem != string.Empty)
                    {
                        SQLiteConnection con = new SQLiteConnection("Data Source= " + Application.StartupPath + @"\Plugins\StealingDB.sdb");
                        SQLiteCommand cmd = new SQLiteCommand();
                        cmd.CommandText = string.Format("select count(*) from ItemList where city = '{0}' and StoreName = '{1}' and ItemName1 = '{2}' and Province = '{3}'", sCity, sShop, sItem, sProv);
                        cmd.Connection = con;
                        con.Open();
                        object x = cmd.ExecuteScalar();
                        cmd = new SQLiteCommand();
                        cmd.Connection = con;
                        if (x == null || int.Parse(x.ToString()) < 1)
                        {
                            cmd.CommandText = string.Format("insert into ItemList (Province, City, StoreName, ItemName1, ItemName2, MinRank, Trivial) values ('{6}', '{0}', '{1}', '{2}', '{3}', '{4}', '{5}')", sCity, sShop, sItem, " ", sMin, sActialTriv, sProv);
                        }
                        else
                        {
                            cmd.CommandText = string.Format("update ItemList set MinRank = '{0}', Trivial = '{1}' where city = '{2}' and StoreName = '{3}' and ItemName1 = '{4}'", sMin, sActialTriv, sCity, sShop, sItem);
                        }
                        x = cmd.ExecuteNonQuery();
                        con.Close();
                    }
                }
            }
            MessageBox.Show("Import/Update Completed!", "WOOOT!");
        }
    }
}
