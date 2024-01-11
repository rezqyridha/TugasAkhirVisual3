object frmSiswa: TfrmSiswa
  Left = 469
  Top = 185
  Width = 779
  Height = 559
  Caption = 'FORM SISWA'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 24
    Top = 48
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
    Left = 400
    Top = 16
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
    Left = 400
    Top = 64
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
  object Label2: TLabel
    Left = 24
    Top = 16
    Width = 67
    Height = 19
    Caption = 'ID SISWA'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object edtnis: TEdit
    Left = 136
    Top = 48
    Width = 185
    Height = 21
    TabOrder = 0
  end
  object edtnm: TEdit
    Left = 520
    Top = 16
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
    Top = 64
    Width = 185
    Height = 21
    ItemHeight = 13
    TabOrder = 4
    Text = '--- PILIH JENIS KELAMIN ---'
    Items.Strings = (
      '')
  end
  object btnS: TBitBtn
    Left = 144
    Top = 208
    Width = 81
    Height = 33
    Caption = 'SIMPAN'
    TabOrder = 5
    OnClick = btnSClick
  end
  object btnE: TBitBtn
    Left = 264
    Top = 208
    Width = 81
    Height = 33
    Caption = 'EDIT'
    TabOrder = 6
    OnClick = btnEClick
  end
  object btnH: TBitBtn
    Left = 384
    Top = 208
    Width = 81
    Height = 33
    Caption = 'HAPUS'
    TabOrder = 7
    OnClick = btnHClick
  end
  object btnB: TBitBtn
    Left = 24
    Top = 208
    Width = 81
    Height = 33
    Caption = 'BARU'
    TabOrder = 8
    OnClick = btnBClick
  end
  object btnbtl: TBitBtn
    Left = 504
    Top = 208
    Width = 81
    Height = 33
    Caption = 'BATAL'
    TabOrder = 9
    OnClick = btnbtlClick
  end
  object btnlprn: TBitBtn
    Left = 624
    Top = 208
    Width = 81
    Height = 33
    Caption = 'LAPORAN'
    TabOrder = 10
    OnClick = btnlprnClick
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
    OnCellClick = dbgrd1CellClick
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
  object edtid: TEdit
    Left = 136
    Top = 16
    Width = 185
    Height = 21
    TabOrder = 12
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
    Connection = con1
    Active = True
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
    ReportOptions.CreateDate = 45262.010402881900000000
    ReportOptions.LastChange = 45262.013262650500000000
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
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 79.370130000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo1: TfrxMemoView
          Left = 298.582870000000000000
          Top = 7.559060000000000000
          Width = 207.874150000000000000
          Height = 45.354360000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'LAPORAN DATA SISWA')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 52.913420000000000000
        Top = 120.944960000000000000
        Width = 740.409927000000000000
        object Memo2: TfrxMemoView
          Width = 68.031540000000000000
          Height = 52.913420000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ID SISWA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 68.031540000000000000
          Width = 75.590600000000000000
          Height = 52.913420000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'NIS')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 143.622140000000000000
          Width = 132.283550000000000000
          Height = 52.913420000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'NAMA SISWA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 275.905690000000000000
          Width = 90.708720000000000000
          Height = 52.913420000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'KELAS')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 366.614410000000000000
          Width = 139.842610000000000000
          Height = 52.913420000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'JENIS KELAMIN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 506.457020000000000000
          Width = 136.063080000000000000
          Height = 52.913420000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ALAMAT')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 68.031540000000000000
        Top = 234.330860000000000000
        Width = 740.409927000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1nis: TfrxMemoView
          Left = 68.031540000000000000
          Width = 75.590600000000000000
          Height = 68.031540000000000000
          ShowHint = False
          DataField = 'nis'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBDataset1."nis"]')
          ParentFont = False
        end
        object frxDBDataset1nama_siswa: TfrxMemoView
          Left = 143.622140000000000000
          Width = 132.283550000000000000
          Height = 68.031540000000000000
          ShowHint = False
          DataField = 'nama_siswa'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBDataset1."nama_siswa"]')
          ParentFont = False
        end
        object frxDBDataset1kelas: TfrxMemoView
          Left = 275.905690000000000000
          Width = 90.708720000000000000
          Height = 68.031540000000000000
          ShowHint = False
          DataField = 'kelas'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBDataset1."kelas"]')
          ParentFont = False
        end
        object frxDBDataset1jenis_kelamin: TfrxMemoView
          Left = 366.614410000000000000
          Width = 139.842610000000000000
          Height = 68.031540000000000000
          ShowHint = False
          DataField = 'jenis_kelamin'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBDataset1."jenis_kelamin"]')
          ParentFont = False
        end
        object frxDBDataset1alamat: TfrxMemoView
          Left = 506.457020000000000000
          Width = 136.063080000000000000
          Height = 68.031540000000000000
          ShowHint = False
          DataField = 'alamat'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBDataset1."alamat"]')
          ParentFont = False
        end
        object frxDBDataset1id_siswa: TfrxMemoView
          Width = 68.031540000000000000
          Height = 68.031496060000000000
          ShowHint = False
          DataField = 'id_siswa'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBDataset1."id_siswa"]')
          ParentFont = False
        end
      end
    end
  end
end
