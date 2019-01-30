using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Data;
using System.Data.OleDb;

namespace DataBayarListrik {
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window {
        private string conString = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=DataPelanggan.accdb;Persist Security Info=False";

        public MainWindow() {
            InitializeComponent();
            ShowData();

            Style s = new Style();
            s.Setters.Add(new Setter(UIElement.VisibilityProperty, Visibility.Collapsed));
            mainTab.ItemContainerStyle = s;
        }

        private void search_Click(object sender, RoutedEventArgs e) {
            SearchData();
        }

        private void SearchData() {
            using (OleDbConnection con = new OleDbConnection(conString)) {
                OleDbDataAdapter data;
                if (textName.Text.Trim() != "")
                    data = new OleDbDataAdapter("SELECT ID as ID, Customer_Name as Nama, Customer_ID as Nomor FROM CustomerData WHERE Customer_Name LIKE '%" + textName.Text.Trim() + "%'", con);
                else if (textCustomerId.Text.Trim() != "")
                    data = new OleDbDataAdapter("SELECT ID as ID, Customer_Name as Nama, Customer_ID as Nomor FROM CustomerData WHERE Customer_ID LIKE '%" + textCustomerId.Text.Trim() + "%'", con);
                else
                    data = new OleDbDataAdapter("SELECT ID as ID, Customer_Name as Nama, Customer_ID as Nomor FROM CustomerData", con);
                DataTable table = new DataTable();
                data.Fill(table);

                customerGrid.ItemsSource = table.DefaultView;
            }
        }

        private void insert_Click(object sender, RoutedEventArgs e) {
            InsertData();
        }

        private void ShowData() {
            using(OleDbConnection con = new OleDbConnection(conString)) {
                OleDbDataAdapter data = new OleDbDataAdapter("SELECT ID as ID, Customer_Name as Nama, Customer_ID as Nomor FROM CustomerData ORDER BY ID", con);

                DataTable table = new DataTable();
                data.Fill(table);

                customerGrid.ItemsSource = table.DefaultView;
            }
        }

        private void InsertData() {
            if (textName.Text.Trim() == "") {
                MessageBox.Show("Isi nama pelanggan");
                return;
            } else if (textCustomerId.Text.Trim() == "") {
                MessageBox.Show("Isi nomor"); ;
                return;
            }

            using (OleDbConnection con = new OleDbConnection(conString)) {
                OleDbCommand cmd = new OleDbCommand("INSERT INTO CustomerData (Customer_Name, Customer_ID) VALUES ('" + textName.Text.Trim() + "', '" + textCustomerId.Text.Trim() + "')", con);
                con.Open();
                cmd.CommandType = CommandType.Text;
                cmd.ExecuteNonQuery();
            }

            ShowData();

            textName.Text = "";
            textCustomerId.Text = "";

            textName.Focus();
        }

        private void textName_KeyDown(object sender, KeyEventArgs e) {
            if (Keyboard.IsKeyDown(Key.Enter))
                SearchData();

        }

        private void reset_Click(object sender, RoutedEventArgs e) {
            DataRowView data = (DataRowView)customerGrid.SelectedItems[0];
            MessageBoxResult result = MessageBox.Show("Apakah anda yakin akan menghapus "+data["Nama"]+" ? ", "Hapus", MessageBoxButton.YesNo);

            if(result == MessageBoxResult.Yes) {
                using(OleDbConnection con = new OleDbConnection(conString)) {
                    con.Open();
                    OleDbCommand cmd = new OleDbCommand("DELETE FROM CustomerData WHERE ID ="+data["ID"], con);
                    cmd.CommandType = CommandType.Text;
                    cmd.ExecuteNonQuery();
                }

                ShowData();
            }
        }

        private void textCustomerId_KeyDown(object sender, KeyEventArgs e) {
            if (e.Key == Key.Enter)
                InsertData();
        }

        private void reportButton_Copy_Click(object sender, RoutedEventArgs e) {
            this.Close();
        }

        private void reset_KeyDown(object sender, KeyEventArgs e) {
        }
    }
}
