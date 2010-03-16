using System;
using System.Collections.Generic;
using System.Text;

namespace Plugin_Sharp_Example
{
    public class Class1 : GeniePlugin.Interfaces.IPlugin
    {
        #region IPlugin Members

        public string Name
        {
            get { return "Plugin Sharp Example"; }
        }

        public string Version
        {
            get { return "1.0"; }
        }

        public void Initialize(GeniePlugin.Interfaces.IHost Host)
        {
            //throw new Exception("The method or operation is not implemented.");
        }

        public void Show(ref System.Windows.Forms.Form Parent)
        {
            //throw new Exception("The method or operation is not implemented.");
        }

        public void ParseText(string Text)
        {
            //throw new Exception("The method or operation is not implemented.");
        }

        public void ParseXML(string XML)
        {
            //throw new Exception("The method or operation is not implemented.");
        }

        public void VariableChanged(string Variable)
        {
            //throw new Exception("The method or operation is not implemented.");
        }

        #endregion
    }
}
