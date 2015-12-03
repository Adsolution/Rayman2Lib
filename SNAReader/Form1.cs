﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Rayman2Lib;

namespace SNAReader
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            new SNAFile(File.ReadAllBytes(@"D:\GOG Games\Rayman 2\Data\World\Levels\Fix.sna.bak"));
            //new SNAFile(File.ReadAllBytes(@"D:\GOG Games\Rayman 2\Data\World\Levels\Menu\Menu.sna"));

            Close();
        }
    }
}
