unit UModeloConsulta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids,
  Data.DB;

type
  TFormModeloConsulta = class(TForm)
    DBGrid1: TDBGrid;
    btPesquisa: TButton;
    edtPesquisa: TEdit;
    lbFiltro: TLabel;
    DataSource: TDataSource;
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure btPesquisaClick(Sender: TObject);
    procedure edtPesquisaChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormModeloConsulta: TFormModeloConsulta;
  CampoFiltro : string;

implementation

{$R *.dfm}

uses UModeloCadastro;

procedure TFormModeloConsulta.btPesquisaClick(Sender: TObject);
begin
  if DataSource.DataSet.FieldByName(CampoFiltro) is TStringField then begin
     //define a regra do filtro para texto
     DataSource.DataSet.Filter := CampoFiltro+' like '+QuotedStr('%'+edtPesquisa.Text+'%');
   end
  else begin
     //define a regra do filtro para numericos, datas, etc SEM like no filtro
     DataSource.DataSet.Filter := CampoFiltro+' = '+edtPesquisa.Text;
  end;
  //ativa o filtro
  DataSource.DataSet.Filtered := true;
  edtPesquisa.SetFocus;
end;

procedure TFormModeloConsulta.DBGrid1DblClick(Sender: TObject);
begin
   Self.Close;
end;

procedure TFormModeloConsulta.DBGrid1TitleClick(Column: TColumn);
begin
  lbFiltro.Caption := Column.Title.Caption+' : ';
  edtPesquisa.Clear;
  CampoFiltro := Column.FieldName;
  DataSource.DataSet.Filtered := false;

  edtPesquisa.SetFocus;//o cursor vai para o edit
end;


procedure TFormModeloConsulta.edtPesquisaChange(Sender: TObject);
begin
  if Length(edtPesquisa.Text) = 0 then begin
    btPesquisa.Enabled := false; //desabilita botao de pesquisa, se o edit tiver vazio
    DataSource.DataSet.Filtered := false;
  end
  else begin
    btPesquisa.Enabled := true;
  end;
end;

procedure TFormModeloConsulta.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  Self := nil;
end;

procedure TFormModeloConsulta.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_ESCAPE then begin //se a tecla ESC for pressionada o formulario é fechado
    Self.Close;
  end;
end;

procedure TFormModeloConsulta.FormShow(Sender: TObject);
begin
  DataSource.DataSet.Open; //ativar a tabela

  lbFiltro.Caption := DBGrid1.Columns[0].Title.Caption+' : '; //pega o caption da coluna da dbgrid e seta a Label tbFiltro
  edtPesquisa.Clear; //limpa o edit
  CampoFiltro := DBGrid1.Columns[0].FieldName; //pega nome da coluna
  DataSource.DataSet.Filtered := false;
end;

end.
