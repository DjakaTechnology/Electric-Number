   M S B A M L   `   `   `  ���� K  GDataBayarListrik, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:DataBayarListrikDataBayarListrik  !    DataBayarListrik.MainWindow   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     0localclr-namespace:DataBayarListrik       � Title$  
MainWindow��$	��768��$
��1024�� � WindowStartupLocation$ CenterScreen=�.���  � ColumnDefinitions �� $	��224 ��� .+��� ���	#FF3AA6F1�� ���	#FF3A82F1$��89��$	��Top=��� $z��tc:\users\djaka\documents\visual studio 2013\Projects\TokoRotiSeleksi\TokoRotiSeleksi\Resources\DTechnologyNoRoom.png��$��89��$	��Top=��� -   $��dashboardButton��$��Data Pelanggan��   	ActiveNav#���   $��0,90,0,0q�$	��Top=�$��75��$��16(��� -   $��mainTab��$��1��$��0,59,0,0q�$��0q�$��0q�.@��� $��TabItem��.��� 
������� �� $
��575* ��� $
��233* � � RowDefinitions �� $
��365* ��� $
��211* �.+�&   System.Windows.Controls.DataGrid  -   $��customerGrid��$��25,204,21,39q�$��2��$��2��$��14(��� -   $��reset��$��Hapus��  DeclineButton#��[ $��Right=�$��	0,0,21,39q�$��Bottom=�$	��101��$��34��$��14(�$��0,0,0,1q����	#FFBD1C1C$��1��$��1���� -    ��Name$ search��$��	Cari Data��$��1��  PrimaryButton#��[ $
��Left=�$��	10,27,0,0q�$	��Top=�$	��135��$��4q�$��39��$��16(� � ToolTip$ Cari data sesuai input���� -    ��Name$ groupBox��$��Input��$��
25,10,10,0q�$	��Top=�$	��180��$��14(�.��� $��
10,10,11,4q�.+��� $
��Nama��$
��Left=�$	��Top=�$��10,1,0,0q�$��0,5,5,5q�$��14(��� -    ��Name$ textName�� �� TextWrapping$
 Wrap=�$��10,32,322,87q�$��14(��� -   	 ��Name$	 
label_Copy��$��Nomor Pelanggan��$
��Left=�$	��Top=�$��	10,62,0,0q�$��0,5,5,5q�$��14(��� -	   $ textCustomerId��$
 Wrap=�$��10,94,322,23q�$��14(��� -
   $ insert��$��Tambahkan Data��$��1��#��[ $
��Left=�$��	10,81,0,0q�$	��Top=�$	��135��$��4q�$��39��$��16(�$ Tambah daa sesuai input��  $	��100��$	��100���� $
��Left=�$��	28,15,0,0q�$
��Wrap=�$	��Top=�$��44��$	��422��$��24(�$
��Bold"�
���   �$��Data Pelanggan Listrik��$��1���� -   $ reportButton_Copy��$��Keluar��#���  $��16(�$��46��$��Bottom=�$��0,0,0,-2q�