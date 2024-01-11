unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls;

type
  TfrmAdm = class(TForm)
    MainMenu1: TMainMenu;
    Label1: TLabel;
    Menu1: TMenuItem;
    FORMSISWA1: TMenuItem;
    FORMKELAS1: TMenuItem;
    FORMPEMBAYARAN1: TMenuItem;
    FORMPENGELUARAN1: TMenuItem;
    FORMTAHUNAJARAN1: TMenuItem;
    Logout1: TMenuItem;
    procedure FORMSISWA1Click(Sender: TObject);
    procedure Logout1Click(Sender: TObject);
    procedure FORMKELAS1Click(Sender: TObject);
    procedure FORMPEMBAYARAN1Click(Sender: TObject);
    procedure FORMPENGELUARAN1Click(Sender: TObject);
    procedure FORMTAHUNAJARAN1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAdm: TfrmAdm;

implementation

uses Unit2, Unit1, Unit6, Unit9, Unit8, Unit7;

{$R *.dfm}

procedure TfrmAdm.FORMSISWA1Click(Sender: TObject);
begin
frmSiswa.show;
end;

procedure TfrmAdm.Logout1Click(Sender: TObject);
begin
frmLogin.show;
end;

procedure TfrmAdm.FORMKELAS1Click(Sender: TObject);
begin
frmkelas.show;
end;

procedure TfrmAdm.FORMPEMBAYARAN1Click(Sender: TObject);
begin
frmpembayaran.show;
end;

procedure TfrmAdm.FORMPENGELUARAN1Click(Sender: TObject);
begin
frmpengeluaran.show;
end;

procedure TfrmAdm.FORMTAHUNAJARAN1Click(Sender: TObject);
begin
frmthnajaran.show;
end;

end.
