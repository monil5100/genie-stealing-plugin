using System;
using System.Collections.Generic;
using System.Text;
using System.Windows.Forms;
using System.IO;

namespace GeniePlugin
{
    public class PluginLog
    {
        private GeniePlugin.Interfaces.IHost _host;
        private GeniePlugin.Interfaces.IPlugin _plugin;

        private TextWriter _logWriter;
        private string _logName;
        private string _fileName;
        private string _filePath;
        private string _fullPath;

        private bool _logGameTime;
        private bool _clearLogAtStart;
        private bool _newLogAtStart;
        private bool _useTitleSeparator;
        
        private string _logTitle;
        private string _titleSeparator;
        private bool _logStarted;

        public PluginLog(GeniePlugin.Interfaces.IHost Host, GeniePlugin.Interfaces.IPlugin PlugIn)
        {
            _host = Host;
            _plugin = PlugIn;
            _logName = _plugin.Name.Replace(" ", "_");
            _fileName = _logName + ".log";
            _filePath = Application.StartupPath;
            if (_filePath != "\\")
                _filePath += "\\";
            _filePath += "Logs\\";
            _fullPath = _filePath + _fileName;

            _logGameTime = false;
            _clearLogAtStart = false;
            _newLogAtStart = false;
            _useTitleSeparator = true;

            _titleSeparator = new String('=',70);
            _logStarted = false;
        }

        public bool LogGameTime {
            get { return _logGameTime; }
            set { _logGameTime = value; }
        }

        public bool ClearLogAtStart
        {
            get { return _clearLogAtStart; }
            set { _clearLogAtStart = value; }
        }

        public bool NewLogAtStart
        {
            get { return _newLogAtStart; }
            set { _newLogAtStart = value; }
        }

        public void StartLog(string Title)
        {
            int i = 1;
            if (_newLogAtStart)
                while (File.Exists(_fullPath))
                {
                    _fullPath = _filePath + _logName + "(" + i.ToString() + ").log";
                    i++;
                }

            _logWriter = new StreamWriter(_fullPath, !_clearLogAtStart);
            _logTitle = Title;
            if (_logTitle.Length > 0 && _useTitleSeparator)
            {
                _logWriter.WriteLine(_titleSeparator);
            }

            if (_logTitle.Length > 0)
            {
                _logWriter.WriteLine(string.Format("{0} started: {1}", _logTitle, DateTime.Now));
            }

            if (_logTitle.Length > 0 && _useTitleSeparator)
            {
                _logWriter.WriteLine(_titleSeparator);
            }
            _logWriter.Close();
            _logStarted = true;
        }

        public void Log(string Text) {
            string logText;

            if (!_logStarted)
                StartLog("");

            _logWriter = new StreamWriter(_fullPath, true);

            logText = string.Format("[{0:HH:mm:ss}]\t", DateTime.Now);
            if (_logGameTime)
                logText += string.Format("({0})\t", _host.get_Variable("gametime"));
            
            logText += Text;

            _logWriter.WriteLine(logText);

            _logWriter.Close();
        }

        public void EndLog()
        {
            _logWriter = new StreamWriter(_fullPath, true);

            if (_logTitle.Length > 0 && _useTitleSeparator)
            {
                _logWriter.WriteLine(_titleSeparator);
            }

            if (_logTitle.Length > 0)
            {
                _logWriter.WriteLine(string.Format("{0} ended: {1}", _logTitle, DateTime.Now));
            }
            _logWriter.Close();
            _logStarted = false;
        }

    }
}
