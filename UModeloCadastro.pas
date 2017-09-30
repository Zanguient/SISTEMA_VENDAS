unit UModeloCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,Datasnap.DBClient,
  Vcl.Imaging.jpeg;

type
  TFormModeloCadastro = class(TForm)
    GroupBox1: TGroupBox;
    Panel1: TPanel;
    btSalvar: TButton;
    btCancelar: TButton;
    btFechar: TButton;
    btNovo: TButton;
    btEditar: TButton;
    DataSource: TDataSource;
    Button1: TButton;
    btExcluir: TButton;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btFecharClick(Sender: TObject);
    procedure btNovoClick(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btEditarClick(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure DataSourceStateChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormModeloCadastro: TFormModeloCadastro;

implementation

{$R *.dfm}

uses UPrincipal;

procedure TFormModeloCadastro.btCancelarClick(Sender: TObject);
begin
  btSalvar.Enabled := false;
  btCancelar.Enabled := false;
  btNovo.Enabled := true;

  TClientDataSet(DataSource.DataSet).Cancel;
end;

procedure TFormModeloCadastro.btEditarClick(Sender: TObject);
begin
   btEditar.Enabled := false;
   btSalvar.Enabled := true;
   btCancelar.Enabled := true;
   btNovo.Enabled := false;
   btExcluir.Enabled := true;

   TClientDataSet(DataSource.DataSet).Edit;
end;

procedure TFormModeloCadastro.btExcluirClick(Sender: TObject);
begin
 if Application.MessageBox('Deseja realmente excluir o registro?','Pergunta',MB_YESNO+MB_ICONQUESTION)= mrYes then
  Begin
    try
      TClientDataSet(DataSource.DataSet).Delete;
      TClientDataSet(DataSource.DataSet).ApplyUpdates(0);
      Application.MessageBox('Registro excluído com sucesso!','Informação',MB_OK+MB_ICONINFORMATION);
    except on E : Exception do
      raise Exception.Create('Erro ao Excluir Registro: '+E.Message);
    end;
       btNovo.Enabled := True;
       btExcluir.Enabled := False;
  End;
end;

procedure TFormModeloCadastro.btFecharClick(Sender: TObject);
begin
    Self.Close;

//    btSalvar.Enabled := false;
//    btCancelar.Enabled := false;
//    btNovo.Enabled := true;
end;

procedure TFormModeloCadastro.btNovoClick(Sender: TObject);
begin
//  btSalvar.Enabled := true;
//  btCancelar.Enabled := true;
//  btNovo.Enabled := false;

  TClientDataSet(DataSource.DataSet).Open;
  TClientDataSet(DataSource.DataSet).Insert;
 end;

procedure TFormModeloCadastro.btSalvarClick(Sender: TObject);
begin
//  btSalvar.Enabled := false;
//  btCancelar.Enabled := false;
//  btNovo.Enabled := true;
//  btExcluir.Enabled := true;

//  Datasnap.DBClient
  TClientDataSet(DataSource.DataSet).Post;
  TClientDataSet(DataSource.DataSet).ApplyUpdates(0);
  DataSource.DataSet.Refresh;
end;

procedure TFormModeloCadastro.DataSourceStateChange(Sender: TObject);
begin
   btNovo.Enabled := (Sender as TDataSource).State in [dsBrowse];
   btSalvar.Enabled := (Sender as TDataSource).State in [dsEdit, dsInsert];
   btCancelar.Enabled := btSalvar.Enabled;
   btEditar.Enabled := (btNovo.Enabled) and not ((Sender as TDataSource).DataSet.IsEmpty);
   btExcluir.Enabled := btEditar.Enabled;
   btFechar.Enabled := btNovo.Enabled;
end;

procedure TFormModeloCadastro.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  TClientDataSet(DataSource.DataSet).Close;
  Action := caFree;
  Self := nil;
end;

procedure TFormModeloCadastro.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_ESCAPE then begin //se a tecla ESC for pressionada o formulario é fechado
    Self.Close;
  end;
end;

end.
