   M S B A M L   `   `   `  ����K  GDataBayarListrik, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:DataBayarListrikDataBayarListrik  5   	   !    DataBayarListrik.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   0localclr-namespace:DataBayarListrik     5   	     � Title$  
MainWindow��5   	   $	��768��6   $
��1024��6)   .��5	      �  � ColumnDefinitions 5
   
   �� 5      $	��224 �6   �� 5      .+�5   
   �� ���	#FF3AA6F16   �� 5   
   ���	#FF3A82F1$��89��6%   $	��Top=�61   �� 5   
   $z��tc:\users\djaka\documents\visual studio 2013\Projects\TokoRotiSeleksi\TokoRotiSeleksi\Resources\DTechnologyNoRoom.png��6   $��89��6�   $	��Top=�6�   �� 5   
   -   5        $��dashboardButton��5      $��Data Pelanggan��6(      	ActiveNav#���   6A   $��0,90,0,0q�6e   $	��Top=�6w   $��75��6�   $��16(�6�   �� 5   
   -   5        $��mainTab��5      $��1��6$   $��0,59,0,0q�64   $��0q�6F   $��0q�6R   .@�5      �� $��TabItem��6   .��5      � 
������� 5      �� 5      $
��575* �6+   �� 5      $
��233* �6+    � RowDefinitions 5      �� 5      $
��365* �6(   �� 5      $
��211* �6(   .+�5      &   System.Windows.Controls.DataGrid  -   5        $��customerGrid��5      $��25,204,21,39q�63   $��2��6I   $��2��6]   $��14(�6n   �� 5      -   5        $��reset��5      $��Hapus��6+     DeclineButton#��[ 6;   $��Right=�6b   $��	0,0,21,39q�6~   $��Bottom=�6�   $	��101��6�   $��34��6�   $��14(�6�   $��0,0,0,1q�6�   ���	#FFBD1C1C$��1��6  $��1��6  6!  �� 5!      -   5         ��Name$ search��5!      $��	Cari Data��6-   $��1��6A     PrimaryButton#��[ 6Q   $
��Left=�6x   $��	10,27,0,0q�6�   $	��Top=�6�   $	��135��6�   $��4q�6�   $��39��6�   $��16(�6�    � ToolTip$ Cari data sesuai input��6  �� 5"      -   5         ��Name$ groupBox��5"      $��Input��61   $��
25,10,10,0q�6@   $	��Top=�6T   $	��180��6l   $��14(�6y   .��5#      � $��
10,10,11,4q�6   .+�5$      �� $
��Nama��6$   $
��Left=�63   $	��Top=�6N   $��10,1,0,0q�6f   $��0,5,5,5q�6x   $��14(�6�   �� 5%      -   5         ��Name$ textName��5%   &    �� TextWrapping$
 Wrap=�68   $��10,32,322,87q�6L   $��14(�6}   �� 5&      -   5         ��Name$ 
label_Copy��5&   $   $��Nomor Pelanggan��68   $
��Left=�6R   $	��Top=�6m   $��	10,62,0,0q�6�   $��0,5,5,5q�6�   $��14(�6�   �� 5'      -	   5        $ textCustomerId��5'   &   $
 Wrap=�6>   $��10,94,322,23q�6R   $��14(�6h   6v   5(      5)      �� 5*      -
   5        $ insert��5*      $��Tambahkan Data��6-   $��1��6F   #��[ 6V   $
��Left=�6}   $��	10,81,0,0q�6�   $	��Top=�6�   $	��135��6�   $��4q�6�   $��39��6�   $��16(�6�   $ Tambah daa sesuai input��6
  5+      5,        5-      $	��100��6   $	��100��6$   5.      �� 5/   
   $
��Left=�6   $��	28,15,0,0q�6/   $
��Wrap=�6B   $	��Top=�6V   $��44��6n   $	��422��6z   $��24(�6�   $
��Bold"�6�   
���   �$��Data Pelanggan Listrik��6�   $��1��6�   �� 50   
   -   5        $ reportButton_Copy��50      $��Keluar��6,   #���  6=   $��16(�6e   $��46��6s   $��Bottom=�6   $��0,0,0,-2q�6�   51      52      