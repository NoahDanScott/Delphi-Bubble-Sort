unit Sort;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls;

type
  TfrmSort = class(TForm)
    btnDisplay: TButton;
    redOutput: TRichEdit;
    procedure btnDisplayClick(Sender: TObject);
  private
    { Private declarations }
    procedure BubbleSort;

  var
    arrNum: array [0 .. 49] of integer;
    tReadFile: TextFile;
    i: integer;
    temp: integer;
    bSwap: boolean;
  public
    { Public declarations }
    function SortHigh(a, b: integer): boolean;
    function SortLow(a, b: integer): boolean;

  end;

var
  frmSort: TfrmSort;

implementation

{$R *.dfm}
{ TfrmSort }

procedure TfrmSort.btnDisplayClick(Sender: TObject);
begin // allows the user to enter their own amounts of money, and get calculated income tax where their amount gets conducted, they get to see how much is conducted
  // code
  i := 1;
  AssignFile(tReadFile, 'RandomNumbers.txt');
  try
    reset(tReadFile);
  except
    ShowMessage('File does not exsist');
    exit;
  end;
  while not(EOF(tReadFile) and (i >= 49)) do
  begin
    readln(tReadFile, arrNum[i]);
    inc(i);
  end;
  BubbleSort;
  closefile(tReadFile);
  // redOutput.Lines.Add(inttostr(arrNum[i]));
end;

procedure TfrmSort.BubbleSort;
var
  iTemp: integer;
  i, k: integer;
begin
  // code
  for k := 0 to Length(arrNum) - 1 do
  begin
    for i := 0 to Length(arrNum) - 2 do
    begin
      bSwap := SortHigh(arrNum[i], arrNum[i + 1]);

      if bSwap then
      begin
        iTemp := arrNum[i + 1];
        arrNum[i + 1] := arrNum[i];
        arrNum[i] := iTemp;
      end;

    end;
    redOutput.Lines.Add(inttostr(arrNum[k]));
   //
  end;
end;

function TfrmSort.SortHigh(a, b: integer): boolean;
begin
  // code
  result := a > b;
end;

function TfrmSort.SortLow(a, b: integer): boolean;
begin
  // code
  if a < b then
    result := true
  else
    result := false;
end;

end.
