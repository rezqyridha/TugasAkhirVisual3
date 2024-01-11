object frmUser: TfrmUser
  Left = 421
  Top = 179
  Width = 557
  Height = 317
  Caption = 'Menu'
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
    Left = 16
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
    end
    object Logout1: TMenuItem
      Caption = 'Logout'
      OnClick = Logout1Click
    end
  end
end
