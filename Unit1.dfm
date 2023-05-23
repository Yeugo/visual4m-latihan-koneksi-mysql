object Form1: TForm1
  Left = 220
  Top = 160
  Width = 1041
  Height = 618
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object l1: TLabel
    Left = 8
    Top = 56
    Width = 75
    Height = 13
    Caption = 'Nama Kustomer'
  end
  object l2: TLabel
    Left = 8
    Top = 88
    Width = 38
    Height = 13
    Caption = 'Telepon'
  end
  object l3: TLabel
    Left = 8
    Top = 120
    Width = 33
    Height = 13
    Caption = 'Alamat'
  end
  object l4: TLabel
    Left = 8
    Top = 152
    Width = 22
    Height = 13
    Caption = 'Kota'
  end
  object l5: TLabel
    Left = 8
    Top = 184
    Width = 44
    Height = 13
    Caption = 'Kode Pos'
  end
  object dg1: TDBGrid
    Left = 8
    Top = 280
    Width = 537
    Height = 233
    DataSource = d1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object e1: TEdit
    Left = 96
    Top = 56
    Width = 225
    Height = 21
    TabOrder = 1
    Text = 'e1'
  end
  object e2: TEdit
    Left = 96
    Top = 88
    Width = 225
    Height = 21
    TabOrder = 2
    Text = 'e1'
  end
  object e3: TEdit
    Left = 96
    Top = 120
    Width = 225
    Height = 21
    TabOrder = 3
    Text = 'e1'
  end
  object e4: TEdit
    Left = 96
    Top = 152
    Width = 225
    Height = 21
    TabOrder = 4
    Text = 'e1'
  end
  object e5: TEdit
    Left = 96
    Top = 184
    Width = 225
    Height = 21
    TabOrder = 5
    Text = 'e1'
  end
  object b1: TButton
    Left = 8
    Top = 240
    Width = 75
    Height = 25
    Caption = 'Baru'
    TabOrder = 6
    OnClick = b1Click
  end
  object b2: TButton
    Left = 96
    Top = 240
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 7
    OnClick = b2Click
  end
  object b3: TButton
    Left = 184
    Top = 240
    Width = 75
    Height = 25
    Caption = 'Edit'
    TabOrder = 8
    OnClick = b3Click
  end
  object b4: TButton
    Left = 272
    Top = 240
    Width = 75
    Height = 25
    Caption = 'Hapus'
    TabOrder = 9
    OnClick = b4Click
  end
  object b5: TButton
    Left = 360
    Top = 240
    Width = 75
    Height = 25
    Caption = 'Batal'
    TabOrder = 10
    OnClick = b5Click
  end
  object con1: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'kustomer'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'C:\Users\ACER\Documents\Kuliah\Visual\Visual2\mysql\libmysql.dll'
    Left = 8
    Top = 8
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from kustomer')
    Params = <>
    Left = 48
    Top = 8
  end
  object d1: TDataSource
    DataSet = zqry1
    Left = 88
    Top = 8
  end
end
