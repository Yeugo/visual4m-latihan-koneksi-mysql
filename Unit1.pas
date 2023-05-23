unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZAbstractConnection, ZConnection, StdCtrls;

type
  TForm1 = class(TForm)
    con1: TZConnection;
    zqry1: TZQuery;
    d1: TDataSource;
    dg1: TDBGrid;
    l1: TLabel;
    l2: TLabel;
    l3: TLabel;
    l4: TLabel;
    l5: TLabel;
    e1: TEdit;
    e2: TEdit;
    e3: TEdit;
    e4: TEdit;
    e5: TEdit;
    b1: TButton;
    b2: TButton;
    b3: TButton;
    b4: TButton;
    b5: TButton;
    procedure b1Click(Sender: TObject);
    procedure b2Click(Sender: TObject);
    procedure b3Click(Sender: TObject);
    procedure b4Click(Sender: TObject);
    procedure b5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.b1Click(Sender: TObject);
begin
  e1.Clear;
  e2.Clear;
  e3.Clear;
  e4.Clear;
  e5.Clear;
end;

procedure TForm1.b2Click(Sender: TObject);
begin
  zqry1.SQL.Clear;
  zqry1.SQL.Add('insert into kustomer values(null,"'+e1.Text+'","'+e2.Text+'","'+e3.Text+'","'+e4.Text+'","'+e5.Text+'")');
  zqry1.ExecSQL;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from kustomer');
  zqry1.Open;
end;

procedure TForm1.b3Click(Sender: TObject);
begin
zqry1.SQL.Clear;
zqry1.SQL.Add('update kustomer set idkustomer = "Rahman S.KOM" where idkustomer= 1');
zqry1.ExecSQL;

zqry1.sql.clear;
zqry1.sql.add('select * from kustomer');
zqry1.open;
end;

procedure TForm1.b4Click(Sender: TObject);
begin
  zqry1.SQL.Clear;
  zqry1.SQL.add('delete from kustomer where idkustomer= 3');
  zqry1.ExecSQL;

  zqry1.SQL.Clear;
  zqry1.sql.Add('select * from kustomer');
  zqry1.Open;
end;

procedure TForm1.b5Click(Sender: TObject);
begin
e1.Clear;
  e2.Clear;
  e3.Clear;
  e4.Clear;
  e5.Clear;
end;

end.
