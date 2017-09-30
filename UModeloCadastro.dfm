object FormModeloCadastro: TFormModeloCadastro
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'FormModeloCadastro'
  ClientHeight = 415
  ClientWidth = 755
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 755
    Height = 386
    Align = alClient
    Caption = 'GroupBox1'
    TabOrder = 0
    object Button1: TButton
      Left = 664
      Top = 10
      Width = 88
      Height = 63
      Caption = 'Pesquisa'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial Rounded MT Bold'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 386
    Width = 755
    Height = 29
    Align = alBottom
    TabOrder = 1
    object btSalvar: TButton
      Left = 454
      Top = 1
      Width = 75
      Height = 27
      Align = alRight
      Caption = 'Salvar'
      TabOrder = 0
      OnClick = btSalvarClick
    end
    object btCancelar: TButton
      Left = 529
      Top = 1
      Width = 75
      Height = 27
      Align = alRight
      Caption = 'Cancelar'
      TabOrder = 1
      OnClick = btCancelarClick
    end
    object btFechar: TButton
      Left = 679
      Top = 1
      Width = 75
      Height = 27
      Align = alRight
      Caption = 'Fechar'
      TabOrder = 2
      OnClick = btFecharClick
    end
    object btNovo: TButton
      Left = 304
      Top = 1
      Width = 75
      Height = 27
      Align = alRight
      Caption = 'Novo'
      TabOrder = 3
      OnClick = btNovoClick
    end
    object btEditar: TButton
      Left = 379
      Top = 1
      Width = 75
      Height = 27
      Align = alRight
      Caption = 'Editar'
      TabOrder = 4
      OnClick = btEditarClick
    end
    object btExcluir: TButton
      Left = 604
      Top = 1
      Width = 75
      Height = 27
      Align = alRight
      Caption = 'Excluir'
      Enabled = False
      TabOrder = 5
      OnClick = btExcluirClick
    end
  end
  object DataSource: TDataSource
    AutoEdit = False
    OnStateChange = DataSourceStateChange
    Left = 552
    Top = 48
  end
end
