object Form2: TForm2
  Left = 479
  Top = 185
  Width = 779
  Height = 559
  Caption = 'Form2'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 24
    Top = 32
    Width = 26
    Height = 19
    Caption = 'NIS'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 408
    Top = 32
    Width = 77
    Height = 19
    Caption = 'Nama Siswa'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 24
    Top = 88
    Width = 35
    Height = 19
    Caption = 'Kelas'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object lbl3: TLabel
    Left = 408
    Top = 88
    Width = 83
    Height = 19
    Caption = 'Jenis Kelamin'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object lbl4: TLabel
    Left = 24
    Top = 144
    Width = 43
    Height = 19
    Caption = 'Alamat'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object edtnis: TEdit
    Left = 136
    Top = 32
    Width = 185
    Height = 21
    TabOrder = 0
  end
  object edtnm: TEdit
    Left = 520
    Top = 32
    Width = 185
    Height = 21
    TabOrder = 1
  end
  object edtkls: TEdit
    Left = 136
    Top = 88
    Width = 185
    Height = 21
    TabOrder = 2
  end
  object edtalamat: TEdit
    Left = 136
    Top = 144
    Width = 185
    Height = 21
    TabOrder = 3
  end
  object cbbjk: TComboBox
    Left = 520
    Top = 88
    Width = 185
    Height = 21
    ItemHeight = 13
    TabOrder = 4
    Text = '--- PILIH JENIS KELAMIN ---'
  end
  object btnS: TBitBtn
    Left = 144
    Top = 208
    Width = 81
    Height = 33
    Caption = 'SIMPAN'
    TabOrder = 5
  end
  object btnE: TBitBtn
    Left = 264
    Top = 208
    Width = 81
    Height = 33
    Caption = 'EDIT'
    TabOrder = 6
  end
  object btnH: TBitBtn
    Left = 384
    Top = 208
    Width = 81
    Height = 33
    Caption = 'HAPUS'
    TabOrder = 7
  end
  object btnB: TBitBtn
    Left = 24
    Top = 208
    Width = 81
    Height = 33
    Caption = 'BARU'
    TabOrder = 8
  end
  object btnbtl: TBitBtn
    Left = 504
    Top = 208
    Width = 81
    Height = 33
    Caption = 'BATAL'
    TabOrder = 9
  end
  object btnlprn: TBitBtn
    Left = 624
    Top = 208
    Width = 81
    Height = 33
    Caption = 'LAPORAN'
    TabOrder = 10
  end
  object dbgrd1: TDBGrid
    Left = 24
    Top = 280
    Width = 681
    Height = 201
    DataSource = ds1
    TabOrder = 11
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id_siswa'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nis'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nama_siswa'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'kelas'
        Width = 88
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'jenis_kelamin'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'alamat'
        Width = 195
        Visible = True
      end>
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
    Left = 728
    Top = 32
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from siswa')
    Params = <>
    Left = 728
    Top = 88
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 728
    Top = 136
  end
  object zqry2: TZQuery
    SQL.Strings = (
      'select * from siswa')
    Params = <>
    Left = 728
    Top = 216
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = zqry2
    BCDToCurrency = False
    Left = 728
    Top = 280
  end
  object frxReport1: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45262.010402881950000000
    ReportOptions.LastChange = 45262.013262650460000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 728
    Top = 336
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 216.000000000000000000
      PaperHeight = 279.000000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 22.677180000000000000
        Top = 16.000000000000000000
        Width = 740.787880000000000000
        object Memo1: TfrxMemoView
          Left = 306.141930000000000000
          Top = 3.779530000000000000
          Width = 154.960730000000000000
          Height = 18.897650000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'LAPORAN DATA SISWA')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
end
