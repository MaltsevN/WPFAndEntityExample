   M S B A M L   `   `   `  ����H  DWpfWithEntity, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:WpfWithEntityWpfWithEntity  5   	       WpfWithEntity.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   -localclr-namespace:WpfWithEntity     5   	   -   5          � Title$  Program��5   	   $��325.628��6   $��500.581��6*    � WindowStartupLocation$ CenterScreen=�6Q    � 
ResizeMode$ NoResize=�6v   .��5	      � $��0,0,0,12q�6   .+�5
   
   �� -   5         ��Name$ button��5
      $��Add Product��6!   $
��Left=�67   $��24��6R   $��
362,10,0,0q�6^   $	��Top=�6r   $	��123��6�   $��5��6�   &   System.Windows.Controls.DataGrid  5   
   -   5          Name$ 	dataGrid1��5      $
��Left=�6&   $��	12,39,0,0q�6A   $	��Top=�6T   $	��204��6l   $	��473��6y   $��6��6�   �� 5   
   -   5         ��Name$ textBoxName��5      $
��Left=�6'   $��22��6B   $��	73,10,0,0q�6N    �� TextWrapping$
 Wrap=�6a   $	��Top=�6u   $	��115��6�   $��
Enter Name��6�   $��2��6�   .��6�   ��5      �� 5       �� Color$ Black��6"    �� Opacity$	 0.5Q�60   .��5   "   5      �� 5   
   -   5        $ textBoxQuantity��5      $
��Left=�6+   $��22��6F   $��
266,10,0,0q�6R   $
 Wrap=�6f   $	��Top=�6z   $��91��6�   $��Enter Quantity��6�   $��4��6�   .��6
  ��5      �� 5      $ Black��6"   $	 0.5Q�60   .��5   "   5      �� 5   
   -   5        $ textBoxPrice��5      $
��Left=�6(   $��22��6C   $��
193,10,0,0q�6O   $
 Wrap=�6c   $	��Top=�6w   $��68��6�   $��Enter Price��6�   $��3��6�   .��6  ��5      �� 5      $ Black��6"   $	 0.5Q�60   .��5   "   5      �� 5   
   -   5        $ button1��5      $��Delete Product��6"   $
��Left=�6;   $��
73,248,0,0q�6V   $	��Top=�6j   $	��108��6�   $��8��6�   �� 5   
   -   5        $ 	textBoxID��5      $
��Left=�6%   $��22��6@   $��
12,248,0,0q�6L   $
 Wrap=�6`   $	��Top=�6t   $��56��6�   $��Enter ID��6�   $��7��6�   .��6�   ��5      �� 5      $ Black��6"   $	 0.5Q�60   .��5   "   5       �� 5!   
   -	   5        $ 
textBoxID1��5!      $
��Left=�6&   $��22��6A   $��	10,10,0,0q�6M   $
 Wrap=�6`   $	��Top=�6t   $��58��6�   $��Enter ID��6�   $��1��6�   .��6�   ��5"      �� 5#      $ Black��6"   $	 0.5Q�60   .��5$   "   5%      5'      5(      