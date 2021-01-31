unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls, Menus, ExtCtrls, ExtDlgs, Buttons;

type
  TForm5 = class(TForm)
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
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
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    StringGrid1: TStringGrid;
    StringGrid2: TStringGrid;
    StringGrid3: TStringGrid;
    OpenPictureDialog1: TOpenPictureDialog;
    Panel1: TPanel;
    Image1: TImage;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    SpeedButton11: TSpeedButton;
    SpeedButton12: TSpeedButton;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    ComboBox4: TComboBox;
    ComboBox5: TComboBox;
    ComboBox6: TComboBox;
    ComboBox7: TComboBox;
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure zap_str1(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit4Exit(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Image1Click(Sender: TObject);
  private
    { Private declarations }
  public
  i,j, y1, sd1, gr1 ,d1   : integer;
  t1, t2, t3  : word;
   st1 : string;
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

uses Unit1DM, Unit1;

{$R *.dfm}

procedure TForm5.FormCreate(Sender: TObject);
var i,j : integer;
begin
edit1.Text:=''; edit2.Text:=''; edit3.Text:='';
edit4.Text:=''; edit5.Text:=''; edit6.Text:='';
edit7.Text:=''; edit8.Text:=''; edit9.Text:='';
label11.Caption:=''; label10.Caption:='';
combobox2.Text:=''; combobox2.Items.Clear;
combobox3.Text:=''; combobox3.Items.Clear;
combobox4.Text:=''; combobox4.Items.Clear;
combobox5.Text:=''; combobox5.Items.Clear;
combobox6.Text:=''; combobox6.Items.Clear;
combobox7.Text:=''; combobox7.Items.Clear;
speedbutton2.Enabled:=false;
speedbutton3.Enabled:=false;
speedbutton4.Enabled:=false;
speedbutton6.Enabled:=false;
speedbutton7.Enabled:=false;
speedbutton8.Enabled:=false;
speedbutton10.Enabled:=false;
speedbutton11.Enabled:=false;
speedbutton12.Enabled:=false;
stringgrid1.DefaultRowHeight:=18;
stringgrid2.DefaultRowHeight:=18;
stringgrid3.DefaultRowHeight:=18;
for i:=0 to stringgrid1.ColCount-1 do
for j:=0 to stringgrid1.RowCount-1 do stringgrid1.Cells[i,j]:='';
for i:=0 to stringgrid2.ColCount-1 do
for j:=0 to stringgrid2.RowCount-1 do stringgrid2.Cells[i,j]:='';
for i:=0 to stringgrid3.ColCount-1 do
for j:=0 to stringgrid3.RowCount-1 do stringgrid3.Cells[i,j]:='';
stringgrid1.RowCount:=2;
stringgrid2.RowCount:=2;
stringgrid3.RowCount:=2;
stringgrid1.ColCount:=7;
stringgrid1.Cells[0,0]:='�';
stringgrid1.Cells[1,0]:='������������';
stringgrid1.Cells[2,0]:='�����';
stringgrid1.Cells[3,0]:='������';
stringgrid1.Cells[4,0]:='���������';
stringgrid1.Cells[5,0]:='����';
stringgrid1.Cells[6,0]:='��� ������';
stringgrid1.ColWidths[0]:=22;
stringgrid1.ColWidths[1]:=158;
stringgrid1.ColWidths[2]:=42;
stringgrid1.ColWidths[3]:=42;
stringgrid1.ColWidths[4]:=56;
stringgrid1.ColWidths[5]:=38;
stringgrid1.ColWidths[6]:=0;
stringgrid2.ColCount:=5;
stringgrid2.Cells[0,0]:='�';
stringgrid2.Cells[1,0]:='������� ��� ��������';
stringgrid2.Cells[2,0]:='� ���.��.';
stringgrid2.Cells[3,0]:='��������';
stringgrid2.Cells[4,0]:='��������';
stringgrid2.ColWidths[0]:=22;
stringgrid2.ColWidths[1]:=168;
stringgrid2.ColWidths[2]:=52;
stringgrid2.ColWidths[3]:=58;
stringgrid2.ColWidths[4]:=58;
stringgrid1.ColCount:=8;
stringgrid1.Cells[0,0]:='�';
stringgrid1.Cells[1,0]:='����';
stringgrid1.Cells[2,0]:='���';
stringgrid1.Cells[3,0]:='������';
stringgrid1.Cells[4,0]:='����������';
stringgrid1.Cells[5,0]:='���';
stringgrid1.Cells[6,0]:='�������������';
stringgrid1.Cells[7,0]:='��� ���������';
panel1.Caption:='';
end;

procedure TForm5.FormActivate(Sender: TObject);
begin
combobox2.Text:=''; combobox2.Items.Clear;
edit5.Text:=''; edit6.Text:=''; edit7.Text:=''; edit8.Text:='';
//maskedit1.Text:=''; maskedit2.Text:='';
dm.Q1.Close;
dm.Q1.SQL.Clear;
dm.Q1.SQL.Add('select * from Groups where ID_Div='+inttostr(form1.d1)+' order by Names');
dm.Q1.Active:=true;
while dm.Q1.Eof=false do
  begin
  combobox2.Items.Add(dm.Q1.fieldbyname('Names').AsString);
  dm.Q1.Next;
  end;
zap_str1(sender);
end;

procedure TForm5.zap_str1(Sender: TObject);
var i,j : integer;
begin
for i:=0 to stringgrid1.ColCount-1 do
for j:=1 to stringgrid1.RowCount-1 do stringgrid1.Cells[i,j]:='';
stringgrid1.RowCount:=2;
combobox3.Text:=''; combobox3.Items.Clear;
dm.Q1.Close;
dm.Q1.SQL.Clear;
if combobox1.Text='' then dm.Q1.SQL.Add('select * from groups order by names') else
begin
dm.Q1.SQL.Add('select * from groups where year_s<='+inttostr(strtoint(copy(combobox1.Text,1,4)))+
' and year_f>='+inttostr(strtoint(copy(combobox1.Text,6,4))));
end;
dm.Q1.Active:=true;
j:=0;
while dm.Q1.Eof=false do
begin
combobox3.Items.Add(dm.Q1.fieldbyname('names').AsString);
inc(j);
stringgrid1.RowCount:=j+1;
stringgrid1.cells[0,j]:=inttostr(j);
stringgrid1.Cells[1,j]:=dm.Q1.fieldbyname('names').AsString;
stringgrid1.cells[2,j]:=dm.Q1.fieldbyname('year_s').AsString;
stringgrid1.Cells[3,j]:=dm.Q1.fieldbyname('year_f').AsString;
stringgrid1.cells[5,j]:=dm.Q1.fieldbyname('course').AsString;
stringgrid1.Cells[6,j]:=dm.Q1.fieldbyname('id_group').AsString;
dm.Q2.Close;
dm.Q2.SQL.Clear;
dm.Q2.SQL.Add ('select * from students where id_group='+inttostr(dm.Q1.fieldbyname('id_group').AsInteger));
dm.Q2.Active:=true;
if dm.Q2.Eof=false then
begin
y1:=dm.Q2.RecordCount;
stringgrid1.cells[4,j]:=inttostr(y1);
end;
if dm.Q1.FieldByName ('id_cur').AsInteger>0 then
begin
dm.Q2.Close;
dm.Q2.SQL.Clear;
dm.Q2.SQL.Add ('select * from curriculumns where id_cur='+dm.Q1.fieldbyname('id_cur').AsString);
dm.Q2.Active:=true;
if dm.Q2.Eof=false then stringgrid1.Cells[5,j]:=dm.Q1.fieldbyname('names').AsString;
end;
stringgrid1.Cells[6,j]:=dm.Q1.fieldbyname('id_group').AsString;
dm.Q1.Next;
end;
if stringgrid1.Cells[0,1]>'' then
begin
decodedate(date(),t3,t2,t1);
if date()>strtodate('01.09.'+inttostr(t3)) then
begin
label48.Caption:=inttostr(t3)+'-'+inttostr(t3+1);
label50.Caption:='�������';
end else
begin
label48.Caption:=inttostr(t3-1)+''+inttostr(t3);
label51.Caption:='��������';
end;
end;
end;





procedure TForm5.Edit1Exit(Sender: TObject);
begin
if (edit1.Text>'') and (strtointdef(edit2.Text,0)>0) and (strtointdef(edit3.Text,0)>0) and
(strtointdef(edit4.Text,0)>0) and (combobox1.ItemIndex>-1) then speedbutton4.Enabled:=true else
speedbutton4.Enabled:=false;
end;

procedure TForm5.Edit4Exit(Sender: TObject);
begin
combobox1.Text:=''; combobox1.Items.Clear;
if strtointdef(edit4.Text,0)=0 then
  begin
  edit4.Text:='';
  edit4.SetFocus;
  end else
  begin
  dm.Q1.Close;
  dm.Q1.SQL.Clear;
  dm.Q1.SQL.Add('select * from subdivisions where id_subdiv='+inttostr(form1.d1)+' order by names');
  dm.Q1.Active:=true;
  while dm.Q1.Eof=false do
    begin
    combobox1.Items.Add(dm.Q1.fieldbyname('names').AsString);
    dm.Q1.Next;
    end;
  end;
if (edit1.Text>'') and (strtointdef(edit2.Text,0)>0) and (strtointdef(edit3.Text,0)>0) and
(strtointdef(edit4.Text,0)>0) and (combobox1.ItemIndex>-1) then speedbutton4.Enabled:=true else
speedbutton4.Enabled:=false;
end;

procedure TForm5.SpeedButton4Click(Sender: TObject);
begin
dm.Q1.Close;
dm.Q1.SQL.Clear;
dm.Q1.SQL.Add('select * from groups where names='+quotedstr(edit1.Text)+' and id_subdiv='+inttostr(sd1)+' and year_s='+edit2.Text);
dm.Q1.Active:=true;
if dm.Q1.Eof=true then
  begin
  dm.Q1.Close;
  dm.Q1.SQL.Clear;
  dm.Q1.SQL.Add('select * from groups order by id_group');
  dm.Q1.Active:=true;
  dm.Q1.Last;
  gr1:=dm.Q1.fieldbyname('id_group').AsInteger+1;
  dm.Q1.Close;
  dm.Q1.SQL.Clear;
  dm.Q1.SQL.Add('insert into groups(id_div, id_subdiv, names,id_group, year_s, year_f, course, reality) values('+
  inttostr(d1)+','+inttostr(sd1)+','+quotedstr(edit1.Text)+','+inttostr(gr1)+','+quotedstr(edit2.Text)+','+
  quotedstr(edit3.Text)+','+quotedstr(edit4.Text)+','+quotedstr('1')+')');
  dm.Q1.ExecSQL;
  zap_str1(sender);
  end;
edit1.Text:=''; edit2.Text:=''; edit3.Text:=''; edit4.Text:='';
combobox1.Text:=''; combobox1.Items.Clear;
end;

procedure TForm5.ComboBox1Change(Sender: TObject);
begin
dm.Q1.Close;
dm.Q1.SQL.Clear;
dm.Q1.SQL.Add('select * from subdivisions where names='+ quotedstr(combobox1.Text));
dm.Q1.Active:=true;
if dm.Q1.Eof=false then
  begin
  sd1:=dm.Q1.fieldbyname('id_subdiv').AsInteger;
  d1:=dm.Q1.fieldbyname('id_div').AsInteger;
  end;
if (edit1.Text>'') and (strtointdef(edit2.Text,0)>0) and (strtointdef(edit3.Text,0)>0)
and (strtointdef(edit4.Text,0)>0) and (combobox1.ItemIndex>-1) then
speedbutton4.Enabled:=true else speedbutton4.Enabled:=false;
end;



procedure TForm5.Image1Click(Sender: TObject);
begin
if openpicturedialog1.Execute then image1.Picture.LoadFromFile(openpicturedialog1.FileName);
end;

end.
