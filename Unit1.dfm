object frmLogin: TfrmLogin
  Left = 453
  Top = 187
  Width = 379
  Height = 338
  Caption = 'LOGIN '
  Color = clTeal
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 40
    Top = 112
    Width = 85
    Height = 19
    Caption = 'USERNAME'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object lbl1: TLabel
    Left = 40
    Top = 160
    Width = 85
    Height = 19
    Caption = 'PASSWORD'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 144
    Top = 48
    Width = 58
    Height = 21
    Caption = 'LOGIN'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object edtuser: TEdit
    Left = 176
    Top = 112
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edtpass: TEdit
    Left = 176
    Top = 160
    Width = 121
    Height = 21
    PasswordChar = '*'
    TabOrder = 1
  end
  object btnMasuk: TBitBtn
    Left = 40
    Top = 240
    Width = 75
    Height = 25
    Caption = 'MASUK'
    TabOrder = 2
    OnClick = btnMasukClick
  end
  object btnDaftar: TBitBtn
    Left = 136
    Top = 240
    Width = 75
    Height = 25
    Caption = 'DAFTAR'
    TabOrder = 3
    OnClick = btnDaftarClick
  end
  object chk1: TCheckBox
    Left = 176
    Top = 200
    Width = 121
    Height = 17
    Caption = 'Tampilkan Password'
    TabOrder = 4
    OnClick = chk1Click
  end
  object btnKeluar: TButton
    Left = 232
    Top = 240
    Width = 75
    Height = 25
    Caption = 'KELUAR'
    TabOrder = 5
    OnClick = btnKeluarClick
  end
  object con1: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Connected = True
    HostName = 'Localhost'
    Port = 3306
    Database = 'komite'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'D:\Kuliah\SEMESTER 5\VISUAL 3\Tugas Akhir\libmysql.dll'
    Left = 8
    Top = 16
  end
  object zqry1: TZQuery
    Connection = con1
    SQL.Strings = (
      'select * from user')
    Params = <>
    Left = 56
    Top = 16
  end
end
