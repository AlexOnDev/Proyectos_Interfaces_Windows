   M S B A M L   `   `   `  ����  Talleres Fitipaldi(    "Talleres_Fitipaldi.ClientesWindows   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5        � Title$  Clientes��5      $	��600��6   $	��800��6$   .��5      �  � RowDefinitions 5	   
   �� 5
      $
��Auto �6   �� 5      $��* �6   �� 5      $
��Auto �6   .+�5   
   ��  �� Orientation$ 
Horizontal=�6   $��10q�6.   .+�5      �� $��Seleccionar cliente:��6   $��Center=�63   $��0 0 10 0q�6N   �� 5      -   5         ��Name$ cmbClientes��5      $	��200��6,   68   5      � 5   
   $��1��6   $��258,62,222,108q�6   $	��NaN��64   $	��NaN��6A    5      �� 5      $
��Auto �6    �� 5      $
��Auto �6    �� 5      $
��Auto �6    �� 5      $
��Auto �6    �� 5      $
��Auto �6     � ColumnDefinitions 5      �� 5      $
��Auto �6#   �� 5      .+�5      �� $��Nombre:��6   $��Center=�6&   $��18(�6A   �� 5      -   5         ��Name$ 	txtNombre��5      $��1��6)   $��10,0,0,0q�69   $��Center=�6K   $	��NaN��6f   �� 5       $��1��6   $��
Apellidos:��6!   $��Center=�66   $��0 10 0 0q�6Q   $��18(�6c   �� 5!      -   5        $ txtApellidos��5!      $��1��6,   $��1��69   $��	10 10 0 0q�6I   $��Center=�6\   �� 5"      $��2��6   $��Edad:��6!   $��Center=�61   $��0 10 0 0q�6L   $��18(�6^   �� 5#      -   5        $ txtEdad��5#      $��2��6'   $��1��64   $��	10 10 0 0q�6D   $��Center=�6W   �� 5$      $��3��6   $��
Teléfono:��6!   $��Center=�65   $��0 10 0 0q�6P   $��18(�6b   �� 5%      -   5        $ txtTelefono��5%      $��3��6+   $��1��68   $��	10 10 0 0q�6H   $��Center=�6[   �� 5&      $��4��6   $
��DNI:��6!   $��Center=�60   $��0 10 0 0q�6K   $��18(�6]   �� 5'      -   5        $ txtDNI��5'      $��4��6&   $��1��63   $��	10 10 0 0q�6C   $��Center=�6V   6q   5(      �� 5)   
   $ 
Horizontal=�6   $��40,323,4,25q�6.   $��1��6C   $	��NaN��6P   .+�5*      �� -   5         ��Name$ btnBorrarCliente��5*      $��Borrar cliente��6/   $��
0 0 150 0 q�6g   $��40��6{   $	��150��6�   �� 5+      -   5        $ btnModificarCliente��5+      $��Modificar cliente��62   $��
0 0 150 0 q�6p   $��40��6�   $	��150��6�   �� 5,      -	   5        $ btnAnadirCliente��5,      $��Añadir cliente��6/   $	��150��6g   $��0 0 0 0 q�6s   $��40��6�   5-      5.      5/      