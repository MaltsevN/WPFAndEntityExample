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

namespace WpfWithEntity
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        Database1Entities context = new Database1Entities();
        public MainWindow()
        {
            InitializeComponent();
        }
        
        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            List<Product> list = context.Products.ToList();
            dataGrid1.ItemsSource = list;
            button.IsEnabled = false;
        }
        
        private void button_Click(object sender, RoutedEventArgs e)
        {
            context.Products.Add(new Product { Id = Convert.ToInt32(textBoxID1.Text), Name = textBoxName.Text, Price = Convert.ToInt32(textBoxPrice.Text),
                Quantity = Convert.ToInt32(textBoxQuantity.Text) });
            context.SaveChanges();
            List<Product> list = context.Products.ToList();
            dataGrid1.ItemsSource = list;

            
            textBoxName.Foreground.Opacity = 0.5;
            textBoxName.Text = "Enter Name";
            textBoxID1.Foreground.Opacity = 0.5;
            textBoxID1.Text = "Enter ID";
            textBoxPrice.Foreground.Opacity = 0.5;
            textBoxPrice.Text = "Enter Price";
            textBoxQuantity.Foreground.Opacity = 0.5;
            textBoxQuantity.Text = "Enter Quantity";

            button.IsEnabled = false;
        }

        private void button1_Click(object sender, RoutedEventArgs e)
        {
            List<Product> list = context.Products.ToList();
            foreach (var item in list)
            {
                if (item.Id == Convert.ToInt32(textBoxID.Text))
                {
                    context.Products.Remove(item);
                }

            }
            context.SaveChanges();
            list = context.Products.ToList();

            dataGrid1.ItemsSource = list;

            textBoxID.Foreground.Opacity = 0.5;
            textBoxID.Text = "Enter ID";
        }

        private void textBoxID_PreviewTextInput(object sender, TextCompositionEventArgs e)
        {
            if (!Char.IsDigit(e.Text, 0)) e.Handled = true;
            ButtonMakeEnable();
        }

        private void textBox_GotFocus(object sender, RoutedEventArgs e)
        {
            ((TextBox)sender).Text = "";
            ((TextBox)sender).Foreground.Opacity = 1.0;
        }
        
        private void ButtonMakeEnable()
        {
            if (textBoxName.Foreground.Opacity == 1.0 &&
                textBoxID1.Foreground.Opacity == 1.0 &&
                textBoxQuantity.Foreground.Opacity == 1.0 &&
                textBoxPrice.Foreground.Opacity == 1.0)
                button.IsEnabled = true;
        }
        
    }
}
