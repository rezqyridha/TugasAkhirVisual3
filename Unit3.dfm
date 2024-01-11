object frmAdm: TfrmAdm
  Left = 419
  Top = 182
  Width = 556
  Height = 314
  Caption = 'Main Menu'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 136
    Top = 96
    Width = 250
    Height = 33
    Caption = 'APLIKASI KOMITE'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object MainMenu1: TMainMenu
    Left = 24
    Top = 16
    object Menu1: TMenuItem
      Caption = 'Menu'
      object FORMSISWA1: TMenuItem
        Caption = 'FORM SISWA'
        OnClick = FORMSISWA1Click
      end
      object FORMKELAS1: TMenuItem
        Caption = 'FORM KELAS'
        OnClick = FORMKELAS1Click
      end
      object FORMPEMBAYARAN1: TMenuItem
        Caption = 'FORM PEMBAYARAN'
        OnClick = FORMPEMBAYARAN1Click
      end
      object FORMPENGELUARAN1: TMenuItem
        Caption = 'FORM PENGELUARAN'
        OnClick = FORMPENGELUARAN1Click
      end
      object FORMTAHUNAJARAN1: TMenuItem
        Caption = 'FORM TAHUN AJARAN'
        OnClick = FORMTAHUNAJARAN1Click
      end
    end
    object Logout1: TMenuItem
      Caption = 'Logout'
      OnClick = Logout1Click
    end
  end
end
