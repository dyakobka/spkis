unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, ExtCtrls, Buttons, Menus;

type
  TForm4 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    ComboBox2: TComboBox;
    CheckBox1: TCheckBox;
    StringGrid1: TStringGrid;
    StringGrid2: TStringGrid;
    StringGrid3: TStringGrid;
    StringGrid4: TStringGrid;
    ScrollBox1: TScrollBox;
    StringGrid5: TStringGrid;
    StringGrid6: TStringGrid;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    Button1: TButton;
    Image1: TImage;
    PopupMenu1: TPopupMenu;
    PopupMenu2: TPopupMenu;
    PopupMenu3: TPopupMenu;
    OpenDialog1: TOpenDialog;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    ComboBox1: TComboBox;
    ComboBox3: TComboBox;
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    Procedure Zap_STR1(Sender: TObject);
    procedure N1Click(Sender: TObject);
  private
    { Private declarations }
  public
  
    { Public declarations }
    ey1, sub1, k : integer;
    d1, d2 : string;
  end;

var
  Form4: TForm4;

implementation

uses Unit1, Unit1DM, Unit5;

{$R *.dfm}


procedure TForm4.FormCreate(Sender: TObject);
var i,j : integer;
begin
form4.Left:=0; form4.Top:=0;
form4.Width:=screen.Width; form4.Height:=screen.Height-36;
label2.Caption:='';
label4.Caption:='';
label11.Caption:='';
//listbox1.Items.Clear; listbox1.Visible:=false; listbox1.Font.Size:=2;
checkbox1.Checked:=false;
combobox2.Text:=''; combobox2.Items.Clear;
combobox3.Text:=''; combobox3.Items.Clear;
stringgrid1.Left:=1;      stringgrid2.Left:=1;    stringgrid3.Left:=1;
stringgrid1.DefaultRowHeight:=20;   stringgrid2.DefaultRowHeight:=20;
stringgrid3.DefaultRowHeight:=20;   stringgrid4.DefaultRowHeight:=20;
stringgrid5.DefaultRowHeight:=20;   stringgrid6.DefaultRowHeight:=20;
stringgrid1.Height:=(form4.ClientHeight-label9.Top-(label9.Height+8)*3) div 3;
stringgrid2.Height:=stringgrid1.Height;
stringgrid3.Height:=stringgrid1.Height;
stringgrid1.Top:=label9.Top+18;
label10.Top:=stringgrid1.Top+stringgrid1.Height+4;
stringgrid2.Top:=label10.Top+18;
label8.Top:=stringgrid2.Top+stringgrid2.Height+4;
stringgrid3.Top:=label8.Top+18;
panel1.Top:=stringgrid2.Top;

stringgrid1.Width:=540;
stringgrid2.Width:=440;
stringgrid3.Width:=540;
panel1.Left:=stringgrid2.Left+stringgrid2.Width+2;
stringgrid1.ColCount:=7;
stringgrid1.Cells[0,0]:='�';
stringgrid1.Cells[1,0]:='������������';
stringgrid1.Cells[2,0]:='��� ������';
stringgrid1.Cells[3,0]:='����';
stringgrid1.Cells[4,0]:='���������';
stringgrid1.Cells[5,0]:='������� ����';
stringgrid1.Cells[6,0]:='��� ������';
stringgrid1.ColWidths[0]:=18;
stringgrid1.ColWidths[1]:=108;
stringgrid1.ColWidths[2]:=62;
stringgrid1.ColWidths[3]:=28;
stringgrid1.ColWidths[4]:=56;
stringgrid1.ColWidths[5]:=242;
stringgrid1.ColWidths[6]:=0;

stringgrid2.ColCount:=5;
stringgrid2.Cells[0,0]:='�';
stringgrid2.Cells[1,0]:='������� ��� �������� ��������';
stringgrid2.Cells[2,0]:='� ���.������';
stringgrid2.Cells[3,0]:='��������';
stringgrid2.Cells[4,0]:='��������';
stringgrid2.ColWidths[0]:=18;
stringgrid2.ColWidths[1]:=198;
stringgrid2.ColWidths[2]:=78;
stringgrid2.ColWidths[3]:=60;
stringgrid2.ColWidths[4]:=60;

stringgrid3.ColCount:=9;
stringgrid3.Cells[0,0]:='�';
stringgrid3.Cells[1,0]:='����';
stringgrid3.Cells[2,0]:='���';
stringgrid3.Cells[3,0]:='����';
stringgrid3.Cells[4,0]:='�������';
stringgrid3.Cells[5,0]:='����������';
stringgrid3.Cells[6,0]:='�����';
stringgrid3.Cells[7,0]:='�������������';
stringgrid3.Cells[8,0]:='���';
stringgrid3.ColWidths[0]:=18;
stringgrid3.ColWidths[1]:=60;
stringgrid3.ColWidths[2]:=24;
stringgrid3.ColWidths[3]:=28;
stringgrid3.ColWidths[4]:=48;
stringgrid3.ColWidths[5]:=190;
stringgrid3.ColWidths[6]:=36;
stringgrid3.ColWidths[7]:=108;
stringgrid3.ColWidths[8]:=0;

stringgrid4.Top:=stringgrid1.Top;
stringgrid4.Left:=stringgrid1.Left+stringgrid1.Width+5;
stringgrid4.Width:=form4.ClientWidth-stringgrid4.Left-1;
stringgrid4.RowCount:=7;
stringgrid4.Cells[0,1]:='1';
stringgrid4.Cells[0,2]:='2';
stringgrid4.Cells[0,3]:='3';
stringgrid4.Cells[0,4]:='4';
stringgrid4.Cells[0,5]:='5';
stringgrid4.Cells[0,6]:='6';
stringgrid4.ColCount:=2;
stringgrid4.ColWidths[0]:=18;
stringgrid4.Height:=stringgrid4.DefaultRowHeight*7+28;
label12.Top:=stringgrid4.Top+stringgrid4.Height+4;
label12.Left:=stringgrid4.Left+5;
stringgrid5.Left:=stringgrid4.Left;
stringgrid5.Top:=label12.Top+18;
stringgrid5.Height:=stringgrid5.DefaultRowHeight*6+28;
label13.Top:=stringgrid5.Top+stringgrid5.Height+4;
label13.Left:=stringgrid5.Left+5;
stringgrid6.Left:=stringgrid4.Left;
stringgrid6.Top:=label13.Top+18;
speedbutton1.Top:=stringgrid5.Top+stringgrid5.Height+1;
speedbutton1.Height:=21;
speedbutton1.Left:=form4.ClientWidth-speedbutton1.Width-1;
speedbutton1.Enabled:=false;
panel1.Caption:='????';
stringgrid5.Width:=stringgrid4.Width;
stringgrid6.Width:=stringgrid4.Width;
stringgrid6.Height:=form4.ClientHeight-stringgrid6.Top-1;
label7.Top:=label9.Top;
label11.Top:=label7.Top;
checkbox1.Top:=label7.Top-1;
label7.Left:=stringgrid4.Left+5;
checkbox1.Left:=label7.Left+15;

stringgrid5.ColCount:=13;
stringgrid5.Cells[0,0]:='�';
stringgrid5.Cells[1,0]:='������';
stringgrid5.Cells[2,0]:='������� ��� ��������';
stringgrid5.Cells[3,0]:='�������';
stringgrid5.Cells[4,0]:='���';
stringgrid5.Cells[5,0]:='����������';
stringgrid5.Cells[6,0]:='�������������';
stringgrid5.Cells[7,0]:='������';
stringgrid5.Cells[8,0]:='���������';
stringgrid5.Cells[9,0]:='���������';
stringgrid5.Cells[10,0]:='�����';
stringgrid5.Cells[11,0]:='���������';
stringgrid5.Cells[12,0]:='���';
stringgrid5.ColWidths[0]:=18;
stringgrid5.ColWidths[1]:=60;
stringgrid5.ColWidths[2]:=148;
stringgrid5.ColWidths[3]:=50;
stringgrid5.ColWidths[4]:=24;
stringgrid5.ColWidths[5]:=89;
stringgrid5.ColWidths[6]:=108;
stringgrid5.ColWidths[7]:=60;
stringgrid5.ColWidths[8]:=60;
stringgrid5.ColWidths[9]:=60;
stringgrid5.ColWidths[10]:=38;
stringgrid5.ColWidths[11]:=56;
stringgrid5.ColWidths[12]:=0;

stringgrid6.ColCount:=10;
stringgrid6.Cells[0,0]:='�';
stringgrid6.Cells[1,0]:='������� ��� �������� ��������';
stringgrid6.Cells[2,0]:='� ���. ������';
stringgrid6.Cells[3,0]:='I ��';
stringgrid6.Cells[4,0]:='II ��';
stringgrid6.Cells[5,0]:='���.����';
stringgrid6.Cells[6,0]:='�����';
stringgrid6.Cells[7,0]:='�����';
stringgrid6.Cells[8,0]:='�����';
stringgrid6.Cells[9,0]:='���������';
stringgrid6.ColWidths[0]:=18;
stringgrid6.ColWidths[1]:=210;
stringgrid6.ColWidths[2]:=78;
stringgrid6.ColWidths[3]:=38;
stringgrid6.ColWidths[4]:=38;
stringgrid6.ColWidths[5]:=50;
stringgrid6.ColWidths[6]:=50;
stringgrid6.ColWidths[7]:=50;
stringgrid6.ColWidths[8]:=50;
stringgrid6.ColWidths[9]:=191;

for i:=0 to stringgrid1.ColCount-1 do
for j:=1 to stringgrid1.RowCount-1 do stringgrid1.Cells[i,j]:='';
stringgrid1.RowCount:=2;
for i:=0 to stringgrid2.ColCount-1 do
for j:=1 to stringgrid2.RowCount-1 do stringgrid2.Cells[i,j]:='';
stringgrid2.RowCount:=2;
for i:=0 to stringgrid3.ColCount-1 do
for j:=1 to stringgrid3.RowCount-1 do stringgrid3.Cells[i,j]:='';
stringgrid3.RowCount:=2;
for i:=0 to stringgrid4.ColCount-1 do
for j:=1 to stringgrid4.RowCount-1 do stringgrid4.Cells[i,j]:='';
stringgrid4.RowCount:=2;
for i:=0 to stringgrid5.ColCount-1 do
for j:=1 to stringgrid5.RowCount-1 do stringgrid5.Cells[i,j]:='';
stringgrid5.RowCount:=2;
for i:=0 to stringgrid6.ColCount-1 do
for j:=1 to stringgrid6.RowCount-1 do stringgrid6.Cells[i,j]:='';
stringgrid6.RowCount:=2;
end;

procedure TForm4.FormActivate(Sender: TObject);
var i,j       : integer;
  t1, t2, t3  : word;
begin
label2.Caption:=form1.d1_st+'. '+form1.sd1_st;
label4.Caption:=form1.m1_st;
combobox1.Text:=''; combobox1.Items.Clear;
combobox2.Text:=''; combobox2.Items.Clear;
for i:=0 to stringgrid1.ColCount-1 do
for j:=1 to stringgrid1.RowCount-1 do stringgrid1.Cells[i,j]:='';
stringgrid1.RowCount:=2;
for i:=0 to stringgrid2.ColCount-1 do
for j:=1 to stringgrid2.RowCount-1 do stringgrid2.Cells[i,j]:='';
stringgrid2.RowCount:=2;
for i:=0 to stringgrid3.ColCount-1 do
for j:=1 to stringgrid3.RowCount-1 do stringgrid3.Cells[i,j]:='';
stringgrid3.RowCount:=2;
for i:=0 to stringgrid4.ColCount-1 do
for j:=1 to stringgrid4.RowCount-1 do stringgrid4.Cells[i,j]:='';
stringgrid4.RowCount:=7;
for i:=0 to stringgrid5.ColCount-1 do
for j:=1 to stringgrid5.RowCount-1 do stringgrid5.Cells[i,j]:='';
stringgrid5.RowCount:=2;
for i:=0 to stringgrid6.ColCount-1 do
for j:=1 to stringgrid6.RowCount-1 do stringgrid6.Cells[i,j]:='';
stringgrid6.RowCount:=2;

dm.Q1.Close;
dm.Q1.SQL.Clear;
dm.Q1.SQL.Add('select * from Education_Years order by Name');
dm.Q1.Active:=true;
while dm.Q1.Eof=false do
  begin
  combobox1.Items.Add(dm.Q1.fieldbyname('Name').AsString);
  dm.Q1.Next;
  end;
if combobox1.Items.Count=0 then
  begin
  decodedate(date(),t3,t2,t1);
  if date()>strtodate('01.09.'+inttostr(t3)) then combobox1.Text:=inttostr(t3)+'-'+inttostr(t3+1) else
  combobox1.Text:=inttostr(t3-1)+'-'+inttostr(t3);
  combobox1.Items.Add(combobox1.Text);
  ey1:=1;
  combobox1.ItemIndex:=0;
  dm.Q1.Close;
  dm.Q1.SQL.Clear;
  dm.Q1.SQL.Add('insert into Education_Years(Name,ID_EY) values('+quotedstr(combobox1.Text)+','+
  quotedstr(inttostr(ey1))+')');
  dm.Q1.ExecSQL;
  end;
Zap_STR1(sender);
if stringgrid1.Cells[0,1]='1' then Zap_STR1(sender);
end;

procedure TForm4.Zap_STR1(Sender: TObject);
var i,j,y1 : integer;
begin
for i:=0 to stringgrid1.ColCount-1 do
for j:=1 to stringgrid1.RowCount-1 do stringgrid1.Cells[i,j]:='';
stringgrid1.RowCount:=2;
dm.Q1.Close;
dm.Q1.SQL.Clear;
if combobox1.Text='' then dm.Q1.SQl.Add('select * from Groups order by Name') else
  begin
  dm.Q1.SQL.Add('select * from Groups where Year_S<='+inttostr(strtoint(copy(combobox1.Text,1,4)))+
  ' and Year_F>='+inttostr(strtoint(copy(combobox1.Text,6,4))));
  end;
dm.Q1.Active:=true;
j:=0;
while dm.Q1.Eof=false do
  begin
  inc(j);
  stringgrid1.RowCount:=j+1;
  stringgrid1.Cells[0,j]:=inttostr(j);
  stringgrid1.Cells[1,j]:=dm.Q1.fieldbyname('Name').AsString;
  stringgrid1.Cells[2,j]:=dm.Q1.fieldbyname('Year_S').AsString;
  stringgrid1.Cells[3,j]:=dm.Q1.fieldbyname('Course').AsString;
  stringgrid4.ColCount:=j*2+1;
  stringgrid4.Cells[j*2-1,0]:=dm.Q1.fieldbyname('Name').AsString;
  stringgrid4.Cells[j*2,0]:='���������';
  stringgrid4.ColWidths[j*2-1]:=120;
  stringgrid4.ColWidths[j*2]:=60;
  dm.Q2.Close;
  dm.Q2.SQL.Clear;
  dm.Q2.SQL.Add('select * from Students where ID_Group='+inttostr(dm.Q1.fieldbyname('ID_Group').AsInteger));
  dm.Q2.Active:=true;
  if dm.Q2.Eof=false then
    begin
    y1:=dm.Q2.RecordCount;
    stringgrid1.Cells[4,j]:=inttostr(y1);
    end;
  if dm.Q1.FieldByName('ID_Cur').AsInteger>0 then
    begin
    dm.Q2.Close;
    dm.Q2.SQL.Clear;
    dm.Q2.SQL.Add('select * from Curriculums where ID_Cur='+dm.Q1.fieldbyname('ID_Cur').AsString);
    dm.Q2.Active:=true;
    if dm.Q2.Eof=false then stringgrid1.Cells[5,j]:=dm.Q1.fieldbyname('Name').AsString;
    end;
  stringgrid1.Cells[6,j]:=dm.Q1.fieldbyname('ID_Group').AsString;
  dm.Q1.Next;
  end;
end;

procedure TForm4.N1Click(Sender: TObject);
begin
form5.ShowModal;
end;



end.