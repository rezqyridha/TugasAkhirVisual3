unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus;

type
  TfrmUser = class(TForm)
    MainMenu1: TMainMenu;
    Menu1: TMenuItem;
    Logout1: TMenuItem;
    FORMSISWA1: TMenuItem;
    FORMKELAS1: TMenuItem;
    Label1: TLabel;
    procedure FORMSISWA1Click(Sender: TObject);
    procedure FORMKELAS1Click(Sender: TObject);
    procedure Logout1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmUser: TfrmUser;

implementation

uses Unit2, Unit6, Unit1;

{$R *.dfm}

procedure TfrmUser.FORMSISWA1Click(Sender: TObject);
begin
frmSiswa.show;
end;

procedure TfrmUser.FORMKELAS1Click(Sender: TObject);
begin
frmkelas.show;
end;

procedure TfrmUser.Logout1Click(Sender: TObject);
begin
frmLogin.show;
end;

end.
