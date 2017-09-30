unit UCadastroClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UModeloCadastro, Data.DB, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg;

type
  TFormCadastroClientes = class(TFormModeloCadastro)
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    Label13: TLabel;
    DBEdit13: TDBEdit;
    btPesquisa: TButton;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit7: TDBEdit;
    procedure btSalvarClick(Sender: TObject);
    procedure btNovoClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure btEditarClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroClientes: TFormCadastroClientes;

implementation

{$R *.dfm}

uses DM, UPrincipal, UConsultaClientes;

procedure TFormCadastroClientes.btCancelarClick(Sender: TObject);
begin
  inherited;
//  DataModule1.ClientDataSetClientes.Cancel;
//  DataModule1.ClientDataSetClientes.Close;
end;

procedure TFormCadastroClientes.btEditarClick(Sender: TObject);
begin
  inherited;
//  DataModule1.ClientDataSetClientes.Edit;
end;

procedure TFormCadastroClientes.btNovoClick(Sender: TObject);
begin
  inherited;
//  DataModule1.ClientDataSetClientes.Open;
//  DataModule1.ClientDataSetClientes.Insert;
end;

procedure TFormCadastroClientes.btSalvarClick(Sender: TObject);
begin
  inherited;
//  DataModule1.ClientDataSetClientes.Post;
//  DataModule1.ClientDataSetClientes.ApplyUpdates(0);

end;

procedure TFormCadastroClientes.Button1Click(Sender: TObject);
begin
  inherited;
  FormPrincipal.abreForm(TFormConsultaClientes);
end;

end.
