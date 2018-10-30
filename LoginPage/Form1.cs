using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data.SqlTypes;


namespace Voting_App
{


    public partial class Form1 : Form
    {




        public Form1()
        {
            InitializeComponent();
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }

        private void progressBar1_Click(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            

            SqlConnection conn = null;
            SqlDataReader rdr = null;
            conn = new SqlConnection("Data Source=ANIKET\\SQLEXPRESS;Initial Catalog=trialDb;Persist Security Info=True;User ID=sa;Password=sa*123");
            conn.Open();

            // 1.  create a command object identifying
            //     the stored procedure
            SqlCommand cmd = new SqlCommand("insertData", conn);

            // 2. set the command object so it knows
            //    to execute a stored procedure
            cmd.CommandType = CommandType.StoredProcedure;

            // 3. add parameter to command, which
            //    will be passed to the stored procedure
            cmd.Parameters.Add(new SqlParameter("@voterId", textBox1.Text.Trim()));
            cmd.Parameters.Add(new SqlParameter("@vote", comboBox1.SelectedItem.ToString().Trim()));


            // execute the command
            rdr = cmd.ExecuteReader();

            // iterate through results, printing each to console
            while (rdr.Read())
            {
                Console.WriteLine("query executed");
            }
            rdr.Close();
            conn.Close();

        }

        private void button2_Click(object sender, EventArgs e)
        {

            SqlConnection conn = null;
            SqlDataReader rdr = null;
            conn = new SqlConnection("Data Source=ANIKET\\SQLEXPRESS;Initial Catalog=trialDb;Persist Security Info=True;User ID=sa;Password=sa*123");
            conn.Open();
            // 1.  create a command object identifying
            //     the stored procedure
            SqlCommand cmd = new SqlCommand("getVotingCount", conn);

            // 2. set the command object so it knows
            //    to execute a stored procedure
            cmd.CommandType = CommandType.StoredProcedure;


            // execute the command
          //  rdr1 = cmd.ExecuteReader();

            // iterate through results, printing each to console
                Console.WriteLine("query executed");
                SqlDataAdapter dataadapter1 = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                dataadapter1.Fill(ds, "tblVoteDetails");
            dataGridView1.AutoGenerateColumns = true;
            dataGridView1.DataSource = ds; // dataset
            dataGridView1.DataMember = "tblVoteDetails"; // table name you need to show
            conn.Close();
        }
    }
}
