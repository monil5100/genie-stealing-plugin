using System;
using System.Collections.Generic;
using System.Text;
using System.Windows.Forms;
using System.Xml;
using System.Xml.XPath;
using System.IO;

namespace GeniePlugin
{
    public class PluginConfig
    {
        private XmlDocument _configFile;
        private GeniePlugin.Interfaces.IHost _host;
        private GeniePlugin.Interfaces.IPlugin _plugin;
        private string _configName;
        private string _fileName;
        private string _filePath;
        private string _fullPath;

        public PluginConfig(GeniePlugin.Interfaces.IHost Host, GeniePlugin.Interfaces.IPlugin PlugIn)
        {
            _host = Host;
            _plugin = PlugIn;
            _configFile = new XmlDocument();
            _configName = _plugin.Name.Replace(" ", "_");
            _fileName = _configName + ".xml";
            _filePath = Application.StartupPath;
            if (_filePath != "\\")
                _filePath += "\\";
            _filePath += "Plugins\\";
            _fullPath = _filePath + _fileName;
        }

        public void SaveConfig()
        {
            if (_configFile == null)
                return;
            try
            {
                _configFile.Save(_fullPath);
            }
            catch (Exception ex)
            {
                _host.EchoText(_plugin.Name + ".SaveConfig: " + ex.Message + "\n");
            }
        }

        public void OpenConfig()
        {
            if (_configFile == null)
                _configFile = new XmlDocument();

            try
            {
                _configFile.Load(_fullPath);
            }
            catch (Exception ex)
            {
                if (Directory.Exists(_filePath))
                {
                    //Any number of problems, but we'll just build a new file.
                    _configFile = new XmlDocument();
                    _configFile.AppendChild(_configFile.CreateXmlDeclaration("1.0", null, null));
                    _configFile.AppendChild(_configFile.CreateElement(_configName));
                }
                else
                    _host.EchoText(_plugin.Name + ".OpenConfig: " + _filePath + " is not a valid path.\n");
            }
        } //OpenConfig

#region GetSectionList
        public Dictionary<string, string> GetSectionList()
        {
            return GetSectionList("");
        }

        public Dictionary<string, string> GetSectionList(string sectionName)
        {
            Dictionary<string, string> retVal = new Dictionary<string, string>();
            XPathNavigator nav;
            XPathNodeIterator iter;
            if (_configFile == null)
                return null;

            if (sectionName != string.Empty)
                sectionName += "/";
            else
                sectionName = "/" + _configName + "/";
            try
            {
                nav = ((IXPathNavigable)_configFile).CreateNavigator();
                iter = nav.Select(sectionName + "*");

                while (iter.MoveNext())
                {
                    if (iter.Current.IsNode)
                    {
                        retVal.Add(iter.Current.Name, sectionName + iter.Current.Name);
                    }
                }
            }
            catch (Exception ex)
            {
                _host.EchoText(_plugin.Name + ".GetSectionList: " + ex.Message + "\n");
                return null;
            }
            return retVal;
        }
#endregion

        public XmlNode GetSection(string sectionName)
        {
            return GetKey("/" + _configName + "/" + sectionName);
        }

#region GetKey
        public XmlNode GetKey(string sectionName, string keyName)
        {
            return GetKey(GetSection(sectionName), keyName);
        }

        public XmlNode GetKey(string keyName)
        {
            if (_configFile == null)
                return null;
            return _configFile.SelectSingleNode(keyName);
        }

        public XmlNode GetKey(XmlNode node, string keyName)
        {
            return node.SelectSingleNode(keyName);
        }
#endregion

#region GetKeyValue
        public string GetKeyValue(string sectionName, string keyName, string defValue)
        {
            XmlNode node;
            node = GetKey(sectionName, keyName);
            if (node != null)
                return GetKeyValue(node, defValue);
            else
                return defValue;
        }

        public string GetKeyValue(XmlNode Key, string defValue)
        {
            try
            {
                return Key.InnerText;
            }
            catch
            {
                return defValue;
            }
        }
        public string GetKeyValue(XmlNode Section, string keyName, string defValue)
        {
            try
            {
                return Section.SelectSingleNode(keyName).InnerText;
            }
            catch
            {
                return defValue;
            }
        }
        public string GetKeyValue(string Key, string defValue)
        {
            try
            {
                return _configFile.SelectSingleNode(Key).InnerText;
            }
            catch 
            {
                return defValue;
            }
        }
#endregion

#region SetKeyValue
        public void SetKeyValue(XmlNode Section, string key, string Value)
        {
            XmlNode node;
            XmlElement element;
            try
            {
                node = Section.SelectSingleNode(key);
                node.InnerText = Value;
            }
            catch (Exception ex)
            {
                if (_configFile != null)
                {
                    element = _configFile.CreateElement(key);
                    Section.AppendChild(element);
                    element.AppendChild(_configFile.CreateTextNode(Value));
                }
            }

        }
        public void SetKeyValue(string Key, string Value)
        {
            XmlNode node;
            XmlElement element;
            try
            {
                node = _configFile.SelectSingleNode(Key);
                node.InnerText = Value;
            }
            catch (Exception ex)
            {
                if (_configFile != null)
                {
                    element = _configFile.CreateElement(Key);
                    element.AppendChild(_configFile.CreateTextNode(Value));
                }
            }
        }
#endregion

        public void SetAttribute(XmlNode node, string attribute, string value)
        {
            XmlAttribute nodeAtt;
            nodeAtt = _configFile.CreateAttribute(attribute);
            nodeAtt.Value = value;
            ((XmlElement)node).SetAttributeNode(nodeAtt);
        }

        public string GetAttribute(XmlNode node, string attribute)
        {
            return node.Attributes[attribute].Value;
        }

        public XmlNode AddSection(string sectionName)
        {
            XmlNode node;
            node = _configFile.CreateElement(sectionName);
            _configFile.SelectSingleNode(_configName).AppendChild(node);
            return node;
        }

        public XmlNode GetComplexKey(XmlNode Section, string key, string name)
        {
            return Section.SelectSingleNode(key + "[@name='" + name + "']");
        }

        public XmlNode AddComplexKey(XmlNode Section, string key, string name, Dictionary<string, string> attributes)
        {
            XmlNode node;
            XmlAttribute attr;
            node = _configFile.CreateElement(key);

            attr = _configFile.CreateAttribute("name");
            attr.Value = name;
            ((XmlElement)node).SetAttributeNode(attr);
            foreach (string s in attributes.Keys)
            {
                attr = _configFile.CreateAttribute(s);
                attr.Value = attributes[s];
                ((XmlElement)node).SetAttributeNode(attr);
            }

            Section.AppendChild(node);
            return node;
        }
    }
}
