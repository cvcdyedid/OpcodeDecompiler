using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.IO;
using System.Diagnostics;

namespace OpcodeDecompiler
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
            groupBox4.AllowDrop = true;
            this.textBox6.Text = Application.StartupPath + "\\Run\\survivors";
            if (!Directory.Exists(Application.StartupPath + "\\Run\\survivors"))
                Directory.CreateDirectory(Application.StartupPath + "\\Run\\survivors");
            this.textBox8.Text = Application.StartupPath + "\\Output";
            if (!Directory.Exists(Application.StartupPath + "\\Output"))
                Directory.CreateDirectory(Application.StartupPath + "\\Output");
        }

        private void button2_Click(object sender, EventArgs e)
        {
            textBox2.Text = "";
            File.WriteAllText("temp.asm", textBox1.Text);
            Process nasm = new Process();
            nasm.StartInfo.FileName = @"""" + Application.StartupPath + "\\Nasm\\nasm.exe" + @"""";
            nasm.StartInfo.Arguments = @"""" + Application.StartupPath + "\\temp.asm" + @"""";
            nasm.StartInfo.UseShellExecute = false;
            nasm.StartInfo.CreateNoWindow = true;
            nasm.StartInfo.RedirectStandardOutput = true;
            nasm.StartInfo.RedirectStandardError = true;
            nasm.Start();
            nasm.WaitForExit();
            StreamReader rdr = nasm.StandardError;
            textBox2.Text += rdr.ReadToEnd();
            if (textBox2.Text.Equals(""))
            {
                textBox2.Text += ByteArrayToString(File.ReadAllBytes("temp"));
                File.Delete("temp");
            }
            File.Delete("temp.asm");
        }

        private void button1_Click(object sender, EventArgs e)
        {
            textBox2.Text = "";
            byte[] bt = StringToByteArray(textBox1.Text.StartsWith("0x") ? textBox1.Text.Substring(2) : textBox1.Text);
            File.WriteAllBytes("temp.bin", bt);
            Process nasm = new Process();
            nasm.StartInfo.FileName = @"""" + Application.StartupPath + "\\Nasm\\ndisasm.exe" + @"""";
            nasm.StartInfo.Arguments = @"""" + Application.StartupPath + "\\temp.bin" + @"""";
            nasm.StartInfo.UseShellExecute = false;
            nasm.StartInfo.RedirectStandardOutput = true;
            nasm.StartInfo.RedirectStandardError = true;
            nasm.StartInfo.CreateNoWindow = true;
            nasm.Start();
            StreamReader rdr = nasm.StandardOutput;
            textBox2.Text += rdr.ReadToEnd();
            rdr = nasm.StandardError;
            textBox2.Text += rdr.ReadToEnd();
            File.Delete("temp.bin");
        }

        public static byte[] StringToByteArray(string hex)
        {
            return Enumerable.Range(0, hex.Length)
                             .Where(x => x % 2 == 0)
                             .Select(x => Convert.ToByte(hex.Substring(x, 2), 16))
                             .ToArray();
        }

        public static string ByteArrayToString(byte[] ba)
        {
            StringBuilder sb = new StringBuilder(ba.Length * 2);
            foreach (byte b in ba)
            {
                sb.Append("0x");
                sb.AppendFormat("{0:x2}", b);
                sb.AppendLine();
            }
            return sb.ToString();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            OpenFileDialog dlg = new OpenFileDialog();
            dlg.ShowDialog();
            textBox3.Text = dlg.FileName;
        }

        private void button4_Click(object sender, EventArgs e)
        {
            bool flag = false;
            textBox2.Text = "";
            if (!textBox3.Text.Equals(""))
            {
                flag = true;
                Process nasm = new Process();
                nasm.StartInfo.FileName = @"""" + Application.StartupPath + "\\Nasm\\nasm.exe" + @"""";
                nasm.StartInfo.Arguments = @"""" + textBox3.Text + @"""";
                nasm.StartInfo.UseShellExecute = false;
                nasm.StartInfo.RedirectStandardOutput = true;
                nasm.StartInfo.RedirectStandardError = true;
                nasm.StartInfo.CreateNoWindow = true;
                nasm.Start();
                StreamReader rdr = nasm.StandardOutput;
                textBox2.Text += rdr.ReadToEnd();
                rdr = nasm.StandardError;
                textBox2.Text += rdr.ReadToEnd();
                if (textBox2.Text.Length == 0)
                {
                    FileInfo inf = new FileInfo(textBox3.Text);
                    string name = inf.Name;
                    name = name.Remove(name.Length - 4);
                    if (File.Exists(textBox6.Text+"\\" + name))
                        File.Delete(textBox6.Text + "\\" + name);
                    File.Move(inf.DirectoryName + "\\" + name, textBox6.Text + "\\" + name);
                    byte[] bt = File.ReadAllBytes(textBox6.Text + "\\" + name);
                    label6.Text = SearchUnqueBytes(textBox6.Text + "\\" + name);
                }
            }
            if (!textBox4.Text.Equals(""))
            {
                flag = true;
                Process nasm = new Process();
                nasm.StartInfo.FileName = @"""" + Application.StartupPath + "\\Nasm\\nasm.exe" + @"""";
                nasm.StartInfo.Arguments = @"""" + textBox4.Text + @"""";
                nasm.StartInfo.UseShellExecute = false;
                nasm.StartInfo.RedirectStandardOutput = true;
                nasm.StartInfo.RedirectStandardError = true;
                nasm.StartInfo.CreateNoWindow = true;
                nasm.Start();
                StreamReader rdr = nasm.StandardOutput;
                textBox2.Text += rdr.ReadToEnd();
                rdr = nasm.StandardError;
                textBox2.Text += rdr.ReadToEnd();
                if (textBox2.Text.Length == 0)
                {
                    FileInfo inf = new FileInfo(textBox4.Text);
                    string name = inf.Name;
                    name = name.Remove(name.Length - 4);
                    if (File.Exists(textBox6.Text + "\\" + name))
                        File.Delete(textBox6.Text + "\\" + name);
                    File.Move(inf.DirectoryName + "\\" + name, textBox6.Text + "\\" + name);
                    byte[] bt = File.ReadAllBytes(textBox6.Text + "\\" + name);
                    label7.Text = SearchUnqueBytes(textBox6.Text + "\\" + name);
                }
            }
            if (flag)
            {
                Process competion = new Process();
                competion.StartInfo.FileName = Application.StartupPath+@"\Run\cgx.bat";
                competion.StartInfo.WorkingDirectory = Application.StartupPath+@"\Run\";
                competion.Start();
            }
        }

        private void button5_Click(object sender, EventArgs e)
        {
            OpenFileDialog dlg = new OpenFileDialog();
            dlg.ShowDialog();
            textBox4.Text = dlg.FileName;
        }

        private void button7_Click(object sender, EventArgs e)
        {
            OpenFileDialog dlg = new OpenFileDialog();
            dlg.ShowDialog();
            textBox5.Text = dlg.FileName;
        }

        private void button6_Click(object sender, EventArgs e)
        {
            textBox2.Text = "";
            if (!textBox5.Text.Equals(""))
            {
                byte[] bt = File.ReadAllBytes(textBox5.Text);
                label2.Text = SearchUnqueBytes(textBox5.Text);
                string filename = Decompile(textBox5.Text);
                if (textBox2.Text.Equals(""))
                {
                    Process notepad = new Process();
                    notepad.StartInfo.FileName = @"C:\Program Files (x86)\Notepad++\notepad++.exe";
                    notepad.StartInfo.Arguments = @"""" + filename + @"""";
                    notepad.Start();
                }
            }
            if (!textBox7.Text.Equals(""))
            {
                label5.Text = SearchUnqueBytes(textBox7.Text);
                string filename = Decompile(textBox7.Text);
                if (textBox2.Text.Equals(""))
                {
                    Process notepad = new Process();
                    notepad.StartInfo.FileName = @"C:\Program Files (x86)\Notepad++\notepad++.exe";
                    notepad.StartInfo.Arguments = @"""" + filename + @"""";
                    notepad.Start();
                }
            }
        }

        string SearchUnqueBytes(string file)
        {
            byte[] data = File.ReadAllBytes(file);
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < data.Length - 4; i++)
            {
                int j = 0;
                for (; j < data.Length - 4; j++)
                {
                    if (j != i && data[i] == data[j] && data[i + 1] == data[j + 1] && data[i + 2] == data[j + 2] && data[i + 3] == data[j + 3])
                        break;
                }
                if (j == data.Length - 4)
                {
                    sb.Append(i);
                    sb.Append(" = 0x");
                    sb.AppendFormat("{0:x2} ", i);
                }
            }
            return sb.ToString();
        }

        private void label8_Click(object sender, EventArgs e)
        {

        }

        private void button10_Click(object sender, EventArgs e)
        {
            FolderBrowserDialog dlg = new FolderBrowserDialog();
            dlg.SelectedPath = Application.StartupPath + "\\Output";
            dlg.ShowDialog();
            textBox8.Text = dlg.SelectedPath;
        }

        private void button9_Click(object sender, EventArgs e)
        {
            OpenFileDialog dlg = new OpenFileDialog();
            dlg.ShowDialog();
            textBox7.Text = dlg.FileName;
        }

        private void button8_Click(object sender, EventArgs e)
        {
            FolderBrowserDialog dlg = new FolderBrowserDialog();
            dlg.SelectedPath = Application.StartupPath + "\\Run\\survivors";
            dlg.ShowDialog();
            textBox6.Text = dlg.SelectedPath;
        }

        private void groupBox4_DragEnter(object sender, DragEventArgs e)
        {
            // Allow dropping of files only (not text or images or whatever)  
            if (e.Data.GetDataPresent(DataFormats.FileDrop, false) == true)
            {
                // without this, the cursor stays a "NO DROP" symbol  
                e.Effect = DragDropEffects.All;
            } 
        }
        string Decompile(string file)
        {
            string s = SearchUnqueBytes(file);
            Process nasm = new Process();
            nasm.StartInfo.FileName = @"""" + Application.StartupPath + "\\Nasm\\ndisasm.exe" + @"""";
            nasm.StartInfo.Arguments = @"""" + file + @"""";
            nasm.StartInfo.UseShellExecute = false;
            nasm.StartInfo.RedirectStandardOutput = true;
            nasm.StartInfo.RedirectStandardError = true;
            nasm.StartInfo.CreateNoWindow = true;
            nasm.Start();
            StreamReader rdr = nasm.StandardOutput;
            string filename = textBox8.Text + "\\" + file.Substring(file.LastIndexOf('\\'), (((file.LastIndexOf('.') == -1 ? file.Length : file.LastIndexOf('.'))) - file.LastIndexOf('\\'))) + ".asm";
            using (StreamWriter sw = new StreamWriter(new FileStream(filename, FileMode.Create)))
            {
                sw.Write(rdr.ReadToEnd());
                sw.WriteLine();
                sw.Write(";"+s);
            }
            rdr = nasm.StandardError;
            textBox2.Text += rdr.ReadToEnd();
            return filename;
        }
        private void groupBox4_DragDrop(object sender, DragEventArgs e)
        {
            string[] files = (string[])e.Data.GetData(DataFormats.FileDrop);

            // loop through the string array, adding each filename to the ListBox  
            string filename = "";
            string s = "";
            foreach (string file in files)
            {
                textBox2.Text = "";
                s=Decompile(file);
                if (textBox2.Text.Equals(""))
                    filename += "\""+s + "\" ";
            }

            Process notepad = new Process();
            notepad.StartInfo.FileName = @"C:\Program Files (x86)\Notepad++\notepad++.exe";
            notepad.StartInfo.Arguments = filename ;
            notepad.Start();
        }


        
    }
}
