object FormModeloConsulta: TFormModeloConsulta
  Left = 0
  Top = 0
  Caption = 'FormModeloConsulta'
  ClientHeight = 276
  ClientWidth = 601
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poOwnerFormCenter
  Visible = True
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lbFiltro: TLabel
    Left = 16
    Top = 16
    Width = 3
    Height = 13
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 56
    Width = 601
    Height = 224
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    OnTitleClick = DBGrid1TitleClick
  end
  object btPesquisa: TButton
    Left = 399
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Pesquisar'
    TabOrder = 1
    OnClick = btPesquisaClick
  end
  object edtPesquisa: TEdit
    Left = 104
    Top = 10
    Width = 289
    Height = 21
    TabOrder = 2
    OnChange = edtPesquisaChange
  end
  object DataSource: TDataSource
    Left = 536
    Top = 8
  end
end
