unit UPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.Actions,
  Vcl.ActnList, Vcl.ExtCtrls, Vcl.Menus, Vcl.ImgList, Vcl.ComCtrls, Vcl.ToolWin,
  Vcl.Imaging.pngimage, Vcl.Buttons;

type
  TFormPrincipal = class(TForm)
    ActionList1: TActionList;
    ImageList1: TImageList;
    CadastroClientes: TAction;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Cadastro1: TMenuItem;
    Clientes1: TMenuItem;
    Produtos1: TMenuItem;
    CadastroProdutos: TAction;
    ToolBar2: TToolBar;
    StatusBar1: TStatusBar;
    sbVenda: TSpeedButton;
    AcConsultaVendas: TAction;
    Vendas: TMenuItem;
    ConsultaVendas1: TMenuItem;
    procedure CadastroClientesExecute(Sender: TObject);
    procedure CadastroProdutosExecute(Sender: TObject);
    procedure sbVendaClick(Sender: TObject);
    procedure AcConsultaVendasExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure abreForm(Classe : TFormClass);
    function buscaForm(Classe : TformClass): Tform;
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

{$R *.dfm}

uses UModeloCadastro, UCadastroClientes, UCadastroProdutos, UVenda,
  UConsultaVendas;

procedure TFormPrincipal.abreForm(Classe: TFormClass);
var
  I : Integer;
begin
  for I := 0 to MDIChildCount -1 do begin
    if MDIChildren[I] is Classe then begin//se formulario já está aberto
       if MDIChildren[I].WindowState = wsMinimized then begin //se formulario estiver minimizado
            MDIChildren[I].WindowState := wsNormal; //formulario sai do estado minimizado para normal

       end;

       MDIChildren[I].BringToFront; //traz o formulario para frente
       MDIChildren[I].SetFocus;     //foca no formulario
       Exit;  //Sai da função abreForm
    end; //encerra o if que verifica se o formulario requerido esta aberto
  end;   //encerra o for que percorre todos os formularios abertos no sistema
  Classe.Create(Application); //abre o formulario caso nao tenha sido aberto
end;

procedure TFormPrincipal.AcConsultaVendasExecute(Sender: TObject);
begin
  abreForm(TFormConsultaVendas);
end;

function TFormPrincipal.buscaForm(Classe: TformClass): Tform;
var
  I : Integer;
begin
  for I := 0 to MDIChildCount -1 do begin
    if MDIChildren[I] is Classe then begin//se formulario já está aberto
       result := MDIChildren[I];
       exit;
    end; //encerra o if que verifica se o formulario requerido esta aberto
  end;   //encerra o for que percorre todos os formularios abertos no sistema
  Messagebox(Application.Handle, Pchar('Formulário não encontrado!'), Pchar('Busca de formulário'), MB_OK+MB_ICONINFORMATION);
end;




procedure TFormPrincipal.CadastroClientesExecute(Sender: TObject);
begin
  abreForm(TFormCadastroClientes);
end;

procedure TFormPrincipal.CadastroProdutosExecute(Sender: TObject);
begin
  abreForm(TFormCadastroProdutos);
end;

procedure TFormPrincipal.sbVendaClick(Sender: TObject);
begin
   abreForm(TFormVenda);
end;

end.
