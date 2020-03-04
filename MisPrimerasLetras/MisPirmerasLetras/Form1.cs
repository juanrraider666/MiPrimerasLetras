﻿//using LoginControlador;
using LoginControlador;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace MisPirmerasLetras
{
    public partial class Form1 : Form
    {
        private LoginControlador.LoginControlador controlador;


        public Form1()
        {
            InitializeComponent();
           this.controlador = new LoginControlador.LoginControlador();
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }
        frmDashboard FrmDashboard = new frmDashboard();
        private void button1_Click(object sender, EventArgs e)
        {
            string usuario = txtUser.Text;
           

            if (usuario == "Usuario" && txtPassword.Text == "Contraseña")
            {
                MessageBox.Show("Ingrese Usuario y contraseña validos", "Error en inicio de sesión");
            }
            else
            {
                int contrasena = int.Parse(txtPassword.Text);
                string ingreso = this.controlador.ConsultarLogin(usuario, contrasena);

                if (ingreso == "no murio")
                {
                    this.Hide();
                    FrmDashboard.Show();
                }
                else
                {

                    MessageBox.Show("Verificar datos", "Error en el inicio de sesion");
                }
            }

            
        }

        private void label4_Click(object sender, EventArgs e)
        {

        }

        private void pictureBox2_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("¿Esta seguro de que desea salir?", "Mensage de estado",
       MessageBoxButtons.YesNo, MessageBoxIcon.Question)
       == DialogResult.Yes)
            {
                Application.Exit();
            }
        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }

        private void pictureBox1_Click(object sender, EventArgs e)
        {
            this.WindowState = FormWindowState.Minimized;
        }

        private void txtUser_TextChanged(object sender, EventArgs e)
        {
            if(txtUser.Text == "Usuario")
            {
                txtUser.Text = "";
                txtUser.ForeColor = Color.LightGray;
            }
        }

        private void txtPassword_TextChanged(object sender, EventArgs e)
        {
            if (txtPassword.Text == "Contraseña")
            {
                txtPassword.Text = "";
                txtPassword.ForeColor = Color.LightGray;
                txtPassword.UseSystemPasswordChar = true;
            }
        }

        private void txtUser_Leave(object sender, EventArgs e)
        {
            if (txtUser.Text == "")
            {
                txtUser.Text = "Usuario";
                txtUser.ForeColor = Color.DimGray;
            }
        }

        private void txtPassword_Leave(object sender, EventArgs e)
        {
            if (txtPassword.Text == "")
            {
                txtPassword.Text = "Contraseña";
                txtPassword.ForeColor = Color.DimGray;
                txtPassword.UseSystemPasswordChar = false;
            }
        }
    }
}
