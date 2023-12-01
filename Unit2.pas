unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection, Buttons,
  frxClass, frxDBSet;

type
  TForm2 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    Label1: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    edtnis: TEdit;
    edtnm: TEdit;
    edtkls: TEdit;
    edtalamat: TEdit;
    cbbjk: TComboBox;
    btnS: TBitBtn;
    btnE: TBitBtn;
    btnH: TBitBtn;
    btnB: TBitBtn;
    btnbtl: TBitBtn;
    btnlprn: TBitBtn;
    con1: TZConnection;
    zqry1: TZQuery;
    ds1: TDataSource;
    dbgrd1: TDBGrid;
    zqry2: TZQuery;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}



end.
