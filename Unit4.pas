unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, ExtCtrls, Buttons, Menus, ExtDlgs;

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
    OpenPictureDialog1: TOpenPictureDialog;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    MainMenu1: TMainMenu;
    N13: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    Procedure Zap_STR1(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N15Click(Sender: TObject);
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

procedure TForm4.N7Click(Sender: TObject);
var cource_next, gr1, cur1, ey1, ns1, sd1 : integer;
  t1, t2, t3 : word;
  st1: dtring;
begin
decodedate(date(),t3,t2,t1);
if date()>strtodate('01.09.'+inttostr(t3)) then st1:=inttostr(t3)+'-'+inttostr(t3+1) else st1:=inttostr(t3-1)+'-'+
inttostr(t3);
st1:=copy(st1,6,4)+'-'+inttostr(strtoint(copy(st1,6,4))+1);
dm.Q1.Close;
dm.Q1.SQL.Clear;
dm.Q1.SQL.Add('select * from education_years where names='+quotedstr(st1);
dm.Q1.Active:=true;
if dm.Q1.Eof=false then ey1:=dm.Q1.fieldbyname('id_ey').AsInteger else
  begin
  dm.Q1.Close;
  dm.Q1.SQL.Clear;
  dm.Q1.SQL.Add('select * from education_years order by id_ey');
  dm.Q1.Active:=true;
  dm.Q1.Last;
  ey1:=dm.Q1.fieldbyname('id_ey').AsInteger+1;
  dm.Q1.Close;
  dm.Q1.SQL.Clear;
  dm.Q1.SQL.Add('insert into education_years(names,id_ey) values('+quotedstr(st1)+','+inttostr(ey1)+')');
  dm.Q1.ExecSQL;
  end;
dm.Q1.Close;
dm.Q1.SQL.Clear;
dm.Q1.SQL.Add('select * from qroups where reality=1');
dm.Q1.Active:=true;
while dm.Q1.Eof=false do
  begin
  if dm.Q1.FieldByName('course').AsInteger<(dm.Q1.FieldByName('year_f').AsInteger-
  dm.Q1.FieldByName('year_f').AsInteger) then
    begin
    course_next:=dm.Q1.fieldbyname('course').AsInteger+1;
    cur1:=dm.Q1.fieldbyname('id_cur').AsInteger;
    dm.Q2.Close;
    dm.Q2.SQL.Clear;
    dm.Q2.SQL.Add('select * from body_curriculumns where id_cur='+inttostr(cur1)+' and course='+
    inttostr(course_next));
    dm.Q2.Active:=true;
    while dm.Q2.Eof = false do
      begin
      dm.Q3.Close;
      dm.Q3.SQL.Clear;
      dm.Q3.SQL.Add('select * from free_loads where id_ey='+inttostr(ey1)+
      ' and course='+quotedstr(dm.Q1.fieldbyname('course').AsString)+
      ' and semester='+quotedstr(dm.Q2.fieldbyname('semester').AsString)+
      ' and id_group='+quotedstr(dm.Q2.fieldbyname('id_group').AsString)+
      ' and id_sub='+quotedstr(dm.Q2.fieldbyname('id_sub').AsString));
      dm.Q3.Active:=true;
      if dm.Q3.Eof=true then
        begin

        if (dm.Q2.FieldByName('semester').AsInteger mod 2)=0 then ns1:=2 else ns1:=1;
        dm.Q3.Close;
        dm.Q3.SQL.Clear;
        dm.Q3.SQL.Add('insert info free_loads(id_ey,edu_sem,id_sub,id_ct,course,semester,hours_lex,hours_lab,'+
        'hours_pract,hours_srs,hours_ksr,hours_control,course,_work,course_project,control_work,referat,agw,'+
        'id_subdiv) values('+inttostr(ey1)+','+inttostr(ns1)+','+quotedstr(dm.Q2.fieldbyname('id_sub').AsString)+
        ','+quotedstr(dm.Q2.fieldbyname('id_ct').AsString)+','+quotedstr(dm.Q2.fieldbyname('course').AsString)+','+
        quotedstr(dm.Q2.fieldbyname('semester').AsString)+','+quotedstr(dm.Q2.fieldbyname('hours_lex').AsString)+
        ','+quotedstr(dm.Q2.fieldbyname('hours_lab').AsString)+','+
        quotedstr(dm.Q2.fieldbyname('hours_pract').AsString)+','+quotedstr(dm.Q2.fieldbyname('hours_srs').AsString)+
        ','+quotedstr(dm.Q2.fieldbyname('hours_ksr').AsString)+','+
        quotedstr(dm.Q2.fieldbyname('hours_control').AsString)+','+
        quotedstr(dm.Q2.fieldbyname('course_work').AsString)+','+
        quotedstr(dm.Q2.fieldbyname('course_project').AsString)+','+
        quotedstr(dm.Q2.fieldbyname('course_work').AsString)+','+quotedstr(dm.Q2.fieldbyname('referat').AsString)+
        ','+quotedstr(dm.Q2.fieldbyname('agw').AsString)+','+quotedstr(dm.Q2.fieldbyname('id_subdiv').AsString)+')');
        dm.Q3.ExecSQL;
        end;
      dm.Q2.Next;
      end;
    end;
  dm.Q1.Next;
  end;
end;
end;

procedure TForm4.N1Click(Sender: TObject);
begin
form5.ShowModal;
end;

procedure TForm4.N9Click(Sender: TObject);
var x1, wb, sheet : OLEVariants;
    st1, st2, st3, st4, st5, sub_short : string;
    i, j, fe1, edu_sem, sub1, course1, sem1, d1, gr2, ey, ct1 : integer;
    t1, t2, t3 : word;
begin
decodedate(date(),t3,t2,t1);
if date()>strtodate('01.09.'+inttostr(t3)) then st1:=inttostr(t3)+'-'+inttostr(t3+1) else
st1:=inttostr(t3-1)+'-'+inttostr(t3);
dm.Q1.Close;
dm.Q1.SQL.Clear;
dm.Q1.SQL.Add('select * from education_years order by id_ey');
dm.Q1.Active:=true;
if dm.Q1.Eof=false then ey:=dm.Q1.fieldbyname('id_ey').AsInteger else
  begin
  dm.Q1.Close;
  dm.Q1.SQL.Clear;
  dm.Q1.SQL.Add('select * from education_years order by id_ey');
  dm.Q1.Active:=true;
  dm.Q1.Last;
  ey:=dm.Q1.fieldbyname('id_ey').AsInteger+1;
  dm.Q1.Close;
  dm.Q1.SQL.Clear;
  dm.Q1.SQL.Add('select * from education_years(names,id_ey) values('+quotedstr(st1)+','+inttostr(ey)+')');
  dm.Q1.ExecSQL;
  end;
if opendialog1.Execute then
  begin
  x1:=CreateOLEObject('excel.application');
  wb:=x1.WorkBooks.add(opendialog1.FileName);
  sheet:=wb.sheets[1];
  j:=0;
  st3:='';
  while st3<>'���.��������:' do
    begin
    inc(j);
    st2:=sheet.cells[j,2];
    st3:=sheet.cells[j,3];
    if st3='1 �������' then edu_sem:=1;
    if st3='2 �������' then edu_sem:=2;
    if st2='����� ����� ��������' then fe1:=1;
    if st2='������� ����� ��������' then fe1:=2;
    if st2='����-������� ����� ��������' then fe1:=3;
    if pos(st3,'�������������:')>0 then
      begin
      st3:=sheet.cells[j,36];
      dm.Q1.Close;
      dm.Q1.SQL.Clear;
      dm.Q1.SQL.Add('select * from divisions where title='+quotedstr(st3));
      dm.Q1.Active:=true;
      if dm.Q1.Eof=false then d1:=dm.Q1.fieldbyname('id_div').AsInteger else d1:=0;
      end;
      st1:=sheet.cells[j,1];
      if (st1>'') and (st2>'') and (st3>'') and (d1>0) then
        begin
        dm.Q1.Close;
        dm.Q1.SQL.Clear;
        dm.Q1.SQL.Add('select * from subjects where names='quotedstr(st3)+' and code_sub='+qoutedstr(st2));
        dm.Q1.Active:=true;
        if dm.Q1.Eof=false then sub1:=dm.Q1.fieldbyname('id_sub').AsInteger else
          begin
          dm.Q1.Close;
          dm.Q1.SQL.Clear;
          dm.Q1.SQL.Add('select * from subjects order by id_sub');
          dm.Q1.Active:=true;
          dm.Q1.Last;
          sub1:=dm.Q1.fieldbyname('id_sub').AsInteger+1;
          st4:=st3;
          sub_short:='';
          while pos(' ', st4)>0 do
            begin
            st5:=copy(st4,1,pos(' ',st4)-1);
            if length(st5)>3 then sub_short:=sub_short+ansippercase(copy(st5,1,1)) else
            sub_short:=sub_short+st5;
            delete(st4,1,pos(' ',st4));

            end;
          if lenght(st5)>3 then sub_short:=sub_short+ansippercase(copy(st5,1,1)) else sub_short:=sub_short+st5;
          dm.Q1.Close;
          dm.Q1.SQL.Clear;
          dm.Q1.SQL.Add('select * from subjects(names,title,id_sub, id_subdiv, code_sub) values('+ quotedstr(st3)+
          ','+qoutedstr(sub_short)+','+inttostr(sub1)+','+inttostr(from1.sd1)+','+qoutedstr(st2)+')');
          dm.Q1.ExecSQl;
          end;
        st1:=sheeet.cells[j,4];
        if strtointdef(st1,0)>0 then
          begin
          course1:=strtoint(st1);
          if edu_sem=1 then sem1:=course1*2-1 else sem1:=course1*2;
          st1:=sheet.cells[j,5];
          if (st1>'') and (pos(',', st1)=0) then
            begin
            dm.Q1.Close;
            dm.Q1.SQL.Clear;
            dm.Q1.SQL.Add('select * from groups where names=' + qoutedstr(st1)+' and id_div='+inttostr(d1));
            dm.Q1.Active:=true;
            if dm.Q1.Eof=false then gr2:=dm.Q1.fieldbyname('id_group').AsInteger else
              begin
              dm.Q1.Close;
              dm.Q1.SQL.Clear;
              dm.Q1.SQL.Add('select * from groups order by id_group');
              dm.Q1.Active:=true;
              dm.Q1.Last;
              gr2:=dm.Q1.fieldbyname('id_group').AsInteger+1;
              if strtointdef(copy(st1,length(st1)-2,2),0)>0 then
                begin
                dm.Q1.Close;
                dm.Q1.SQL.Clear;
                dm.Q1.SQL.Add('insert into groups(id_div,names,id_group,year_s,course,reality) values('+
                quotedstr(inttostr(d1))+','+qoutedstr(st1)+','+quotedstr(inttostr(gr2))+','+quotedstr('20'+
                copy(st1,lenght(st1)-2,2))+','+quotedstr(inttostr(course1))+','quotedstr(inttostr(1))+')');
                dm.Q1.ExecSQl;
                end else
                begin
                //to bo continied
                end;
              end;
            end else
            begin
            //to bo continied
            end;
          st1;=sheet.cells.[j,37];
          if st1>'' then ct1:=1 else ct1:=2;
          st1:=sheet.cells[j,9];
          st2:=sheet.cells[j,12];
          st3:=sheet.cells[j,10];
          st4:=sheet.cells[j,32];
          end;
        end;
      end;
    messagedlg('������ ������ �� ������� ����� ��'+form1.Sd1_st+' ��������!',mtInformation,[mbok],0);
    x1.quit;
    end;
  end;
end;
procedure TForm4.N15Click(Sender: TObject);
var rez : TModalResult;
  course_next : integer;
begin
dm.Q1.Close;
dm.Q1.SQL.Clear;
dm.Q1.SQL.Add('select * from groups where realiry=1');
dm.Q1.Active:=true;
while dm.Q1.Eof=false do
  begin
  if dm.Q1.FieldByName('id_cur').AsInteger=0 then
  rez:=messagedlg('�������� ������� ������� ���� ��� ����� '+ dm.Q1.fieldbyname('names').AsString,mtinformation,[mbok,mbno],0);
  if rez=mrok then
    begin
    if opendialog1.Execute then
      begin
      if (dm.Q1.FieldByName('years_f').AsInteger-dm.Q1.FieldByName('years_s').AsInteger)>dm.Q1.FieldByName('course').AsInteger then
        begin
        course_next:=dm.Q1.fieldbyname('course').AsInteger+1;
        x1:=CreateOLEObject('excel.application');
        wb:=x1.WorkBooks.add(opendialog1.Name);
        sheet:=wb.sheet[3];
        if sheet.name='��������' then
          begin
          //
          end;
        end;
      end;
    end;
  x1.quit;
  dm.Q1.next;
  end;
end;

end.
